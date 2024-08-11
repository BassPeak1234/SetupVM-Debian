#!/bin/bash

# Mettre à jour le système
echo "Mise à jour du système..."
sudo apt update && sudo apt upgrade -y

# Installer les paquets htop, git, curl et iptables
echo "Installation des paquets : htop, git, curl, iptables..."
sudo apt install -y htop git curl iptables

# Demander si l'utilisateur veut mettre une IP fixe
read -p "Voulez-vous configurer une IP fixe ? (yes/no): " reponse

# Vérifier la réponse de l'utilisateur
if [[ "$reponse" == "yes" || "$reponse" == "o" ]]; then
    # Cloner le dépôt GitHub
    echo "Clonage du dépôt GitHub..."
    git clone https://github.com/BassPeak1234/ChangeIP.git

    # Vérifier si le clonage a réussi
    if [[ -d "ChangeIP" ]]; then
        # Aller dans le dossier cloné
        cd ChangeIP

        # Lancer le script ChangeIP.sh
        echo "Lancement de ChangeIP.sh..."
        bash ChangeIP.sh
    else
        echo "Erreur : le clonage du dépôt a échoué."
    fi
else
    echo "Fin du script sans configuration d'IP fixe."
fi
