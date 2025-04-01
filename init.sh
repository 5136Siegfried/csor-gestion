#!/bin/bash

# Initialisation des dossiers
mkdir -p statuts
mkdir -p reglement_interieur
mkdir -p protocoles
mkdir -p docs
mkdir -p ag/convocations
mkdir -p ag/comptes_rendus
mkdir -p ag/votes
mkdir -p outils

# Fichiers de base avec contenu d'amorçage
echo "# Statuts – Version initiale" > statuts/statuts-v1.md
echo "# Statuts – Proposition V2" > statuts/statuts-v2-proposition.md
echo "# Historique des amendements\n\n| Date | Auteur | Modif | Lien PR |\n|------|--------|-------|---------|" > statuts/historique-amendements.md

echo "# Règlement Intérieur 2025" > reglement_interieur/reglement-2025.md
echo "# Guide du Vote\nInstructions, quorum, majorité, et outils numériques" > reglement_interieur/guide-vote.md
touch reglement_interieur/fiches-pratiques/.keep

echo "# Protocole de maraude" > protocoles/maraude.md
echo "# Protocole de soins sanitaires" > protocoles/soins_sanitaires.md
echo "# Protocole de gestion des conflits internes" > protocoles/gestion_conflit.md

echo "# Charte Éthique" > docs/charte_ethique.md
echo "# Manifeste du CSOR" > docs/manifeste.md
echo "# Formulaire d'adhésion (version texte)" > docs/formulaire_adhesion.md

touch ag/convocations/.keep
touch ag/comptes_rendus/.keep
touch ag/votes/.keep

echo "# Modèle de mail type" > outils/modèle-mailing.md
echo "# Liste des outils numériques utilisés par l'association" > outils/outils-numeriques.md
echo "# Fiche projet – modèle vierge" > outils/modèle-fiche-projet.md

# README principal
cat <<EOF > README.md
# CSOR – Infrastructure associative

Ce dépôt contient les statuts, règlements, protocoles et documents de gouvernance du Collectif Secours et Orientation de Rue.

Chaque contribution est versionnée, documentée, et soumise à validation collective.

## Structure

- \`/statuts/\` : statuts en vigueur et propositions d’amendement
- \`/reglement_interieur/\` : règles pratiques, guides et fiches
- \`/protocoles/\` : procédures liées aux actions de terrain
- \`/docs/\` : textes fondateurs, formulaires, chartes
- \`/ag/\` : convocations, comptes-rendus, outils de vote
- \`/outils/\` : ressources pratiques pour les membres

Pour contribuer : ouvrez une issue, une PR, ou participez aux AG.
EOF

echo "✅ Structure initialisée."
