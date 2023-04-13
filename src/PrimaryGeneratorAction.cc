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
/// \file PrimaryGeneratorAction.cc
/// \brief Implementation of the PrimaryGeneratorAction class
//
//
//
// 

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "PrimaryGeneratorAction.hh"

#include "G4Event.hh"
#include "G4ParticleTable.hh"
#include "G4IonTable.hh"
#include "G4ParticleDefinition.hh"
#include "G4Geantino.hh"
#include "G4SystemOfUnits.hh"
#include "Randomize.hh"
#include "G4RandomDirection.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PrimaryGeneratorAction::PrimaryGeneratorAction()
: G4VUserPrimaryGeneratorAction(),fParticleGun(0)
{
  G4int n_particle = 1;
  fParticleGun  = new G4ParticleGun(n_particle);

  particleTable = G4ParticleTable::GetParticleTable();
  
  G4ParticleDefinition* particle = particleTable->FindParticle("opticalphoton");
  fParticleGun->SetParticleDefinition(particle);
  fParticleGun->SetParticleEnergy(9.6*eV);
  fParticleGun->SetParticlePosition(G4ThreeVector(0.*cm,0.*cm,0.*cm));
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PrimaryGeneratorAction::~PrimaryGeneratorAction()
{
  delete fParticleGun;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void PrimaryGeneratorAction::GeneratePrimaries(G4Event* anEvent)
{
  // if (fParticleGun->GetParticleDefinition() == G4Geantino::Geantino()) {
      G4ThreeVector momentumDirection = G4RandomDirection();
      G4ThreeVector orthogonalVector = G4ThreeVector(1.0, 0.0, 0.0);
      G4ThreeVector polarizationDirection = momentumDirection.cross(orthogonalVector);
      if (polarizationDirection.mag() < 1e-9) {
          orthogonalVector = G4ThreeVector(0.0, 1.0, 0.0);
          polarizationDirection = momentumDirection.cross(orthogonalVector);
      }
      polarizationDirection = polarizationDirection.unit();

      G4ParticleDefinition* opticalPhoton = particleTable->FindParticle("opticalphoton");
      fParticleGun->SetParticleDefinition(opticalPhoton);
      fParticleGun->SetParticleMomentum(momentumDirection);
      fParticleGun->SetParticlePolarization(polarizationDirection);

      G4double energy_123nm = 9.32 * eV;
      G4double energy_133nm = 10.08 * eV;
      G4double particleEnergy = G4RandFlat::shoot(energy_133nm, energy_123nm);
      fParticleGun->SetParticleEnergy(particleEnergy);
    // }
    // create vertex
    //
      fParticleGun->GeneratePrimaryVertex(anEvent);

}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

