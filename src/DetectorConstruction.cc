//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
/// \file DetectorConstruction.cc
/// \brief Implementation of the DetectorConstruction class
//
//

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "DetectorConstruction.hh"
#include "DetectorMessenger.hh"

#include "G4Material.hh"
#include "G4NistManager.hh"

#include "G4Tubs.hh"
#include "G4Box.hh"
#include "G4SubtractionSolid.hh"
#include "G4LogicalVolume.hh"
#include "G4PVPlacement.hh"

#include "G4GeometryManager.hh"
#include "G4PhysicalVolumeStore.hh"
#include "G4LogicalVolumeStore.hh"
#include "G4SolidStore.hh"
#include "G4RunManager.hh"

#include "G4SystemOfUnits.hh"
#include "G4PhysicalConstants.hh"
#include "G4UnitsTable.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::DetectorConstruction()
:G4VUserDetectorConstruction(),
 fTargetMater(0), fLogicTarget(0), 
 fDetectorMater(0), fLogicDetector(0), 
 fWorldMater(0), fPhysiWorld(0),
 fDetectorMessenger(0)
{
  fTargetLength      = 1*m; 
  fTargetRadius      = 0.5*m;
  fDetectorLength    = 5*m; 
  fDetectorThickness = 2*m;
  fInsetRadius = 0.0*cm;
  fDetectorRadius = 0.0*cm;


  fWorldLength = std::max(fTargetLength,fDetectorLength);
  fWorldRadius = fTargetRadius + 1.0*m;
      
  DefineMaterials();
    
  fDetectorMessenger = new DetectorMessenger(this);
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

DetectorConstruction::~DetectorConstruction()
{ delete fDetectorMessenger;}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4VPhysicalVolume* DetectorConstruction::Construct()
{
  return ConstructVolumes();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::DefineMaterials()
{
  // build materials
  //
  G4Element* H  = new G4Element("Hydrogen", "H", 1, 1.*g/mole);
  G4Element* N  = new G4Element("Nitrogen", "N", 7, 14.01*g/mole);
  G4Element* O  = new G4Element("Oxygen",   "O", 8, 16.00*g/mole);
  G4Element* C  = new G4Element("Carbon",   "C", 6, 12.00*g/mole);

  G4int ncomponents; G4double fractionmass;      
  G4Material* Air20 = new G4Material("Air", 1.205*mg/cm3, ncomponents=2,
				     kStateGas, 293.*kelvin, 1.*atmosphere);
  Air20->AddElement(N, fractionmass=0.7);
  Air20->AddElement(O, fractionmass=0.3);

  G4int number_of_atoms;
  G4Material* H2O = new G4Material("Water", 1.0*g/cm3, ncomponents=2,
				     kStateLiquid, 293.*kelvin, 1.*atmosphere);
  H2O->AddElement(H, number_of_atoms=2);
  H2O->AddElement(O, number_of_atoms=1);


  //Plastic. From cbsim 
  G4Material *plastic=new G4Material("Poly",0.96*g/cm3, ncomponents=2);
  plastic->AddElement(C,number_of_atoms=2);
  plastic->AddElement(H,number_of_atoms=4);




  //
  fWorldMater = Air20;

  double gasFactor;
  gasFactor = 3.28; // 2 bar: gm/L 
  gasFactor /= 1E3; // gm/cm^3

  // fTargetMater   = new G4Material("Argon", 18, 40.00*g/mole, 1.4 *g/cm3, kStateLiquid,  77.*kelvin, 1.*atmosphere);
  // fDetectorMater = new G4Material("Argon", 18, 40.00*g/mole, 1.4 *g/cm3, kStateLiquid,  77.*kelvin, 1.*atmosphere);
  fTargetMater   = new G4Material("Argon", 18, 40.00*g/mole, gasFactor *g/cm3, kStateLiquid,  77.*kelvin, 1.*atmosphere);
  fDetectorMater = new G4Material("Argon", 18, 40.00*g/mole, gasFactor *g/cm3, kStateLiquid,  77.*kelvin, 1.*atmosphere);
  //  fShieldMater = H2O;
  fShieldMater = plastic;

  /*

    Target is a Box nested inside World box. Detector is a Box inset from Target walls, nested Target, as tall (Length) as Target.
    EC, 20-Oct-2019.

   */

}


G4VPhysicalVolume* DetectorConstruction::ConstructVolumes()
{
  /*
  G4Tubs*
  sWorld = new G4Tubs("World",                                 //name
                 0.,fWorldRadius, 0.5*fWorldLength, 0.,twopi); //dimensions  
  */
  fWorldRadius = 2*fTargetRadius;
  fWorldLength = 2*fTargetLength;

  G4Box* sWorld = new G4Box("World", fWorldRadius,fWorldRadius,fWorldLength/2.);
               
  G4LogicalVolume*
  lWorld = new G4LogicalVolume(sWorld,                  //shape
                             fWorldMater,               //material
                             "World");                  //name

  fPhysiWorld = new G4PVPlacement(0,                    //no rotation
                            G4ThreeVector(),            //at (0,0,0)
                            lWorld,                     //logical volume
                            "World",                    //name
                            0,                          //mother volume
                            false,                      //no boolean operation
                            0);                         //copy number


  // Shield. Now plastic inside Target,if I use a negative fShieldThickness.

  G4Box* sOutShield = new G4Box("OutShield",fTargetRadius, fTargetRadius, fTargetLength/2);
  G4Box* sInShield = new G4Box("InShield", fTargetRadius+fShieldThickness, fTargetRadius+fShieldThickness, fTargetLength/2.+fShieldThickness);
  G4SubtractionSolid *sShield = new G4SubtractionSolid("Shield",sOutShield, sInShield);  

  fLogicShield = new G4LogicalVolume(sShield,       //shape
                             fShieldMater,            //material
                             "Shield");               //name
                               
           new G4PVPlacement(0,                         //no rotation
			     G4ThreeVector(0.,0.,0.),  // fWorldLength/2.-1*fDetectorLength/2.),             //at (0,0,0)
                           fLogicShield,              //logical volume
                           "Shield",                  //name
			   lWorld,                      //mother  volume
                           false,                       //no boolean operation
                           0);                          //copy number


                            
  // Target
  //
  /*
  G4Tubs* 
  sTarget = new G4Tubs("Target",                                   //name
                  0., fTargetRadius, 0.5*fTargetLength, 0.,twopi); //dimensions
  */
	   // With a negative fShieldThickness this will put the target inside the plastic. EC, 1-Nov-2019.

  G4Box* sTarget = new G4Box("Target", fTargetRadius+fShieldThickness, fTargetRadius+fShieldThickness, fTargetLength/2.+fShieldThickness);

  fLogicTarget = new G4LogicalVolume(sTarget,           //shape
                             fTargetMater,              //material
                             "Target");                 //name
                               
           new G4PVPlacement(0,                         //no rotation
			     G4ThreeVector(0.,0.,0.),             //at (0,0,0)
                           fLogicTarget,                //logical volume
                           "Target",                    //name
                           lWorld,                      //mother  volume
                           false,                       //no boolean operation
                           0);                          //copy number



  // Detector
  //
  /*
  G4Tubs* 
  sDetector = new G4Tubs("Detector",  
                fTargetRadius, fWorldRadius, 0.5*fDetectorLength, 0.,twopi);
  */

  std::cout << "fInsetRadius is " << fInsetRadius << std::endl;
  std::cout << "fShieldThickness is " << fShieldThickness << std::endl;
  fDetectorRadius = fTargetRadius-fInsetRadius;
  G4Box* sDetector = new G4Box("Detector",fDetectorRadius, fDetectorRadius, fDetectorLength/2);

  
  fLogicDetector = new G4LogicalVolume(sDetector,       //shape
                             fDetectorMater,            //material
                             "Detector");               //name
                               
           new G4PVPlacement(0,                         //no rotation
			     G4ThreeVector(0.,0.,0.),  // fWorldLength/2.-1*fDetectorLength/2.),             //at (0,0,0)
                           fLogicDetector,              //logical volume
                           "Detector",                  //name
			   lWorld,                      //mother  volume
                           false,                       //no boolean operation
                           0);                          //copy number


  

  PrintParameters();
  
  //always return the root volume
  //
  return fPhysiWorld;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::PrintParameters()
{
  G4cout << "\n World : Length = " << G4BestUnit(fWorldLength,"Length")
         << " Radius = " << G4BestUnit(fWorldRadius,"Length")  
         << " Material = " << fWorldMater->GetName();
  G4cout << "\n Target : Length = " << G4BestUnit(fTargetLength,"Length")
         << " Radius = " << G4BestUnit(fTargetRadius,"Length")  
         << " Material = " << fTargetMater->GetName();
  G4cout << "\n Detector : Length = " << G4BestUnit(fDetectorLength,"Length")
         << " Radius = " << G4BestUnit(fDetectorRadius,"Length")  
    //         << " Thickness = " << G4BestUnit(fDetectorThickness,"Length")  
         << " Material = " << fDetectorMater->GetName() << G4endl;          

  G4cout << "\n Shield : Thickness = " << G4BestUnit(fShieldThickness,"Length")
         << " Material = " << fShieldMater->GetName() << G4endl;          

}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::SetTargetMaterial(G4String materialChoice)
{
  // search the material by its name
  G4Material* pttoMaterial =
     G4NistManager::Instance()->FindOrBuildMaterial(materialChoice);   
  
  if (pttoMaterial) { 
    fTargetMater = pttoMaterial;
    if(fLogicTarget) { fLogicTarget->SetMaterial(fTargetMater); }
    G4RunManager::GetRunManager()->PhysicsHasBeenModified();
  } else {
    G4cout << "\n--> warning from DetectorConstruction::SetTargetMaterial : "
           << materialChoice << " not found" << G4endl;
  }              
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::SetDetectorMaterial(G4String materialChoice)
{
  // search the material by its name
  G4Material* pttoMaterial =
     G4NistManager::Instance()->FindOrBuildMaterial(materialChoice);   
  
  if (pttoMaterial) { 
    fDetectorMater = pttoMaterial;
    if(fLogicDetector) { fLogicDetector->SetMaterial(fDetectorMater); }
    G4RunManager::GetRunManager()->PhysicsHasBeenModified();
  } else {
    G4cout << "\n--> warning from DetectorConstruction::SetDetectorMaterial : "
           << materialChoice << " not found" << G4endl;
  }              
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::SetTargetRadius(G4double value)
{
  fTargetRadius = value;
  G4RunManager::GetRunManager()->ReinitializeGeometry();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::SetInsetRadius(G4double value)
{
  fInsetRadius = value;
  G4RunManager::GetRunManager()->ReinitializeGeometry();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::SetTargetLength(G4double value)
{
  fTargetLength = value;
  G4RunManager::GetRunManager()->ReinitializeGeometry();
}

void DetectorConstruction::SetShieldThickness(G4double value)
{
  fShieldThickness = value;
  G4RunManager::GetRunManager()->ReinitializeGeometry();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::SetDetectorThickness(G4double value)
{
  fDetectorThickness = value;
  G4RunManager::GetRunManager()->ReinitializeGeometry();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void DetectorConstruction::SetDetectorLength(G4double value)
{
  fDetectorLength = value;
  G4RunManager::GetRunManager()->ReinitializeGeometry();
}

void DetectorConstruction::SetDetectorRadius(G4double value)
{
  fDetectorRadius = value;
  G4RunManager::GetRunManager()->ReinitializeGeometry();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4double DetectorConstruction::GetTargetLength()
{
  return fTargetLength;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4double DetectorConstruction::GetTargetRadius()
{
  return fTargetRadius;
}
G4double DetectorConstruction::GetShieldThickness()
{
  return fShieldThickness;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4Material* DetectorConstruction::GetTargetMaterial()
{
  return fTargetMater;
}

G4Material* DetectorConstruction::GetShieldMaterial()
{
  return fShieldMater;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4LogicalVolume* DetectorConstruction::GetLogicTarget()
{
  return fLogicTarget;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4double DetectorConstruction::GetDetectorLength()
{
  return fDetectorLength;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4double DetectorConstruction::GetDetectorThickness()
{
  return fDetectorThickness;
}

G4double DetectorConstruction::GetDetectorRadius()
{
  return fDetectorRadius;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4Material* DetectorConstruction::GetDetectorMaterial()
{
  return fDetectorMater;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

G4LogicalVolume* DetectorConstruction::GetLogicDetector()
{
  return fLogicDetector;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
