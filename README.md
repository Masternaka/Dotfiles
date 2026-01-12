# Dotfiles de Masternaka

Ce dépôt contient mes dotfiles et scripts de configuration pour mon environnement de développement. Ce README présente le contenu du répertoire `Dotfiles`, comment les installer, et comment les maintenir.

## But
Rassembler mes fichiers de configuration (shell, éditeur, gestionnaire de fenêtres, outils CLI, etc.) pour:
- pouvoir reproduire rapidement mon environnement sur une nouvelle machine,
- versionner mes réglages,
- partager mes personnalisations utiles.

## Arborescence / fichiers
Ci‑dessous se trouvent les fichiers et dossiers importants du répertoire `Dotfiles`. Remplace les descriptions par des détails précis si tu veux que j'écrive les descriptions exactes de chaque fichier.

- `.bashrc` — Configuration pour Bash (aliases, prompt, variables d'environnement).
- `.zshrc` — Configuration pour Zsh (plugins, thèmes, alias).
- `.profile` / `.bash_profile` — Variables et initialisations pour les shells de connexion.
- `.vimrc` — Configuration de Vim (plugins, mappings, options).
- `.config/` — Dossier pour configurations compatibles XDG, par exemple :
  - `.config/nvim/` — configuration Neovim
  - `.config/alacritty/` — configuration du terminal Alacritty
  - `.config/i3/` ou `.config/sway/` — configuration gestionnaire de fenêtres
- `.gitconfig` — Configuration Git (nom, email, aliases, hooks).
- `.tmux.conf` — Configuration de tmux.
- `install.sh` ou `bootstrap.sh` — Script d'installation automatique (création de symlinks, installation de dépendances).
- `stow/` ou structure pour GNU Stow — si utilisée pour gérer les liens symboliques.
- `bin/` ou `scripts/` — petits scripts utilitaires (expliquer à quoi ils servent).
- `README.md` — Ce fichier.
- `LICENSE` — Licence du dépôt (si présente).
- `dotfiles.md` ou `NOTES.md` — notes spécifiques et explications d’usage (si présentes).

> Remarque : ci‑dessus sont des exemples courants — envoie-moi la liste exacte des fichiers présents dans ton répertoire `Dotfiles` (commande `ls -la Dotfiles` ou `tree -a Dotfiles`) et je remplacerai chaque entrée par une description précise.

## Installation
Options d'installation typiques — choisis celle que tu utilises ou indique-moi si tu veux une autre méthode.

1. Installation manuelle (création de liens symboliques) :
   - Copier/renommer les fichiers vers ton dossier utilisateur et créer les symlinks :
     - Exemple : `ln -s /chemin/vers/Dotfiles/.vimrc ~/.vimrc`
2. Avec un script d'installation :
   - Exécuter `./install.sh` ou `./bootstrap.sh` (vérifie le script avant exécution).
3. Avec GNU Stow (recommandé si la structure est organisée par packages) :
   - Dans le dépôt : `stow vim zsh git` — crée les symlinks depuis les sous-dossiers vers `~`.

Ajoute ici la commande exacte que tu veux que j'inclus si tu as déjà un script d'installation.

## Dépendances
Liste des outils nécessaires pour que les configurations fonctionnent correctement (exemples) :
- git
- zsh / bash
- tmux
- vim / neovim
- stow (si utilisé)
- alacritty, i3, etc. selon ton setup

Indique-moi les dépendances spécifiques et j’ajouterai une section d’installation automatisée (apt/brew/pacman).

## Personnalisation et maintenance
- Pour mettre à jour tes dotfiles : modifier le fichier localement → commit → push.
- Pour déployer sur une nouvelle machine : cloner le dépôt puis exécuter le script d'installation ou stow.
- Sauvegarde : conserver une copie du `~` actuel avant d'écraser les fichiers.

## Contribution
- Si tu veux que d'autres contribuent, ajoute des instructions (fork, PR, conventions de commit).
- Indiquer si tu acceptes les issues/PRs.

## Licence
Précise la licence si tu veux en ajouter une (MIT, Apache 2.0, etc.). Sinon, indique "Tous droits réservés".

## Contact
- GitHub: [Masternaka](https://github.com/Masternaka)
- Email: (ajoute ton email si tu veux le partager)

---
Prochaine étape : envoie-moi la liste réelle des fichiers contenus dans le répertoire `Dotfiles` (sortie de `ls -la Dotfiles` ou `tree -a Dotfiles`) et je compléterai la section "Arborescence / fichiers" avec une description précise pour chaque fichier, puis je te fournirai un README final prêt à committer. Si tu préfères, je peux directement proposer le fichier README mis à jour et créer une branche/PR — confirme alors si je dois pousser sur le dépôt et donne l'autorisation nécessaire.
```
