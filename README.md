# Dotfiles de Masternaka

Ce dépôt contient mes fichiers de configuration pour différents outils en ligne de commande, terminaux, éditeurs et utilitaires que j’utilise au quotidien.

L’objectif est de :
- **reproduire rapidement** mon environnement sur une nouvelle machine,
- **versionner** mes réglages,
- **centraliser** toutes les configs au même endroit.

Le dépôt est organisé par application : chaque dossier correspond en général à ce qui sera placé sous `~/.config/<outil>` (ou équivalent).

---

## Contenu du dépôt

- **`alacritty/`**  
  Configuration du terminal Alacritty.  
  - `alacritty.toml` : configuration principale (police, couleurs, raccourcis, comportement).  
  - `fonts.toml` : configuration liée aux polices utilisées.  
  - `colors.toml` et `colorschemes/*.yml` : jeux de couleurs (Catppuccin, Dracula, Gruvbox, Nord, Tokyo Night, etc.).

- **`fastfetch/`**  
  - `config.jsonc` : configuration de l’outil `fastfetch` (affichage d’infos système dans le terminal, thème, icônes, modules affichés, etc.).

- **`ghostty/`**  
  - `config` : fichier de configuration du terminal Ghostty (thème, police, options diverses).

- **`git/`**  
  - `gitup` : script ou configuration liée à l’outil Git (par exemple un helper ou un alias avancé pour mettre à jour les dépôts).

- **`helix/`**  
  Configurations pour l’éditeur Helix.  
  - `config.toml` : configuration principale (thème, comportements, keybindings globaux).  
  - `languages.toml` : configuration spécifique aux langages (LSP, formatters, linters, etc.).  
  - `themes/catppuccin_mocha.toml` : thème personnalisé Catppuccin Mocha pour Helix.

- **`kitty/`**  
  Configurations pour le terminal Kitty.  
  - `kitty.conf` : configuration principale (polices, taille, comportements, raccourcis).  
  - `themes/*.conf` : différents thèmes de couleurs (Catppuccin, Dracula, Gruvbox, Nord…).

- **`ranger/`**  
  Configurations pour le gestionnaire de fichiers en TUI Ranger.  
  - `rc.conf` : configuration principale (raccourcis, options, comportement).  
  - `rifle.conf` : associations de fichiers (quel programme ouvrir pour quel type de fichier).  
  - `commands.py` : commandes personnalisées pour Ranger.  
  - `scope.sh` : script pour les prévisualisations dans Ranger.  
  - `README.md` : documentation spécifique à ma configuration Ranger.

- **`samba/`**  
  - `smb.conf` : configuration Samba (partages, permissions, options de serveur de fichiers).

- **`wezterm/`**  
  - `wezterm.lua` : configuration du terminal WezTerm (thème, police, layout des panes, keybindings, etc.).

- **`yazi/`**  
  Configurations pour le gestionnaire de fichiers Yazi.  
  - `yazi.toml` : configuration principale de Yazi.  
  - `keymap.toml` : raccourcis clavier personnalisés.  
  - `theme.toml` : thème de couleurs pour l’interface.  
  - `setup-yazi.sh` : script d’installation/initialisation pour Yazi (copie/symlinks des configs, dépendances éventuelles).  
  - `Guide d'installation Yazi.md` : guide détaillé (en français) expliquant comment installer et configurer Yazi avec ces fichiers.

- **`zed/`**  
  Configurations pour l’éditeur Zed.  
  - `settings.json` : préférences de l’éditeur (thèmes, police, comportements).  
  - `themes/.nordic.json` : thème personnalisé de type Nordique.

- **`.gitignore`**  
  Fichiers/chemins ignorés par Git (fichiers temporaires, caches, etc.).

- **`README.md`**  
  Ce fichier : description globale du dépôt et de son organisation.

---

## Installation / utilisation

### 1. Cloner le dépôt

```bash
git clone git@github.com:Masternaka/Dotfiles.git
cd Dotfiles
```

### 2. Placement des fichiers

Selon l’outil, les dossiers doivent généralement être liés (symlinks) ou copiés vers `~/.config` ou le chemin attendu :

- Alacritty : `~/.config/alacritty/`
- Fastfetch : `~/.config/fastfetch/`
- Ghostty : selon ta config, par exemple `~/.config/ghostty/` ou autre chemin supporté
- Git : script `gitup` à placer dans un dossier présent dans ton `$PATH` (par ex. `~/bin/` ou `/usr/local/bin/`)
- Helix : `~/.config/helix/`
- Kitty : `~/.config/kitty/`
- Ranger : `~/.config/ranger/`
- Samba : `/etc/samba/smb.conf` (attention : nécessite les droits root)
- WezTerm : généralement `~/.wezterm.lua` ou `~/.config/wezterm/wezterm.lua` selon ta préférence
- Yazi : `~/.config/yazi/`
- Zed : `~/Library/Application Support/Zed/` (sur macOS) ou répertoire de config équivalent selon la plateforme

Exemple de création de lien symbolique pour une appli basée sur XDG :

```bash
ln -s ~/Github/Dotfiles/alacritty ~/.config/alacritty
```

Adapte le chemin vers le dépôt si nécessaire.

### 3. Cas particulier : Yazi

Consulte le fichier `Guide d'installation Yazi.md` dans le dossier `yazi/` pour un guide complet.  
Tu peux également utiliser le script `setup-yazi.sh` s’il est prévu pour automatiser la mise en place (copie/symlinks et éventuelles dépendances).

---

## Maintenance

- **Modifier une config** : éditer le fichier correspondant dans ce dépôt, puis `git commit` + `git push`.  
- **Nouvelle machine** : cloner ce dépôt, puis recréer les liens symboliques ou relancer les scripts d’installation (comme `setup-yazi.sh`).  
- **Sauvegarde** : avant de remplacer des fichiers système sensibles (par ex. `smb.conf`), conserver une copie de la version existante.

---

## Auteur

- **GitHub** : [Masternaka](https://github.com/Masternaka)
