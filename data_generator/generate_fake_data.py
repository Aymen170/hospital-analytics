import pandas as pd          
import random             
from faker import Faker     
import os                    

# Initialisation de Faker avec la localisation française
fake = Faker("fr_FR")

# Fixer la graine aléatoire pour avoir des résultats reproductibles
random.seed(42)

NB_PATIENTS = 100
NB_MEDECINS = 20
NB_CONSULTATIONS = 300
NB_TRAITEMENTS = 250
NB_FACTURES = 150

# Chemin de sortie des fichiers CSV générés
output_path = "../data/csv"
os.makedirs(output_path, exist_ok=True)

# --- Génération des données patients ---
patients = []
for i in range(1, NB_PATIENTS + 1):
    patients.append({
        "id": i,                                 
        "nom": fake.name(),                   
        "sexe": random.choice(["H", "F"]),      
        "age": random.randint(0, 100),            # Age aléatoire entre 0 et 100 ans
        "date_admission": fake.date_between(start_date='-2y', end_date='today')  # Date d’admission dans les 2 dernières années
    })
# Conversion en DataFrame pandas
df_patients = pd.DataFrame(patients)
# Export au format CSV 
df_patients.to_csv(f"{output_path}/patients.csv", index=False)

# --- Génération des données médecins ---
specialites = ["Cardiologue", "Généraliste", "Pédiatre", "Chirurgien", "Dermatologue"]
medecins = []
for i in range(1, NB_MEDECINS + 1):
    medecins.append({
        "id": i,                              
        "nom": fake.name(),                     
        "specialite": random.choice(specialites)  # Spécialité choisie aléatoirement
    })
df_medecins = pd.DataFrame(medecins)
df_medecins.to_csv(f"{output_path}/medecins.csv", index=False)

# --- Génération des données consultations ---
consultations = []
for i in range(1, NB_CONSULTATIONS + 1):
    consultations.append({
        "id": i,                               
        "patient_id": random.randint(1, NB_PATIENTS),  # Lien vers un patient existant
        "medecin_id": random.randint(1, NB_MEDECINS),  # Lien vers un médecin existant
        "date": fake.date_between(start_date='-1y', end_date='today'),  # Date de la consultation (1 an max)
        "diagnostic": fake.sentence(nb_words=4)        
    })
df_consultations = pd.DataFrame(consultations)
df_consultations.to_csv(f"{output_path}/consultations.csv", index=False)

# --- Génération des données traitements ---
traitements = []
for i in range(1, NB_TRAITEMENTS + 1):
    traitements.append({
        "id": i,                       
        "consultation_id": random.randint(1, NB_CONSULTATIONS),  
        "medicament": fake.word().capitalize(),  
        "duree_jours": random.randint(1, 30)       # Durée du traitement en jours
    })
df_traitements = pd.DataFrame(traitements)
df_traitements.to_csv(f"{output_path}/traitements.csv", index=False)

# --- Génération des données facturation ---
factures = []
for i in range(1, NB_FACTURES + 1):
    factures.append({
        "id": i,                          
        "patient_id": random.randint(1, NB_PATIENTS),  
        "montant": round(random.uniform(50, 1000), 2), # Montant facturé entre 50 et 1000 €
        "date_paiement": fake.date_between(start_date='-1y', end_date='today')  # Date de paiement dans l’année
    })
df_factures = pd.DataFrame(factures)
df_factures.to_csv(f"{output_path}/facturation.csv", index=False)

print("Données générées avec succès dans data/csv/")
