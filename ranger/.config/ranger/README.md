# Configuration Ranger

Configuration complète de **ranger**, un gestionnaire de fichiers en ligne de commande pour le terminal.

## 📁 Structure des fichiers

Cette configuration comprend 4 fichiers essentiels :

- **`rc.conf`** - Configuration principale (options et raccourcis clavier)
- **`rifle.conf`** - Détermine comment ouvrir chaque type de fichier
- **`scope.sh`** - Script de prévisualisation avancée des fichiers
- **`commands.py`** - Commandes personnalisées en Python

## ✨ Fonctionnalités principales

### Apparence et comportement
- Mode d'affichage Miller (3 colonnes)
- Affichage des fichiers cachés activé
- Prévisualisation d'images avec kitty
- Support Git intégré (vcs_aware)
- Bordures et onglets améliorés
- Affichage de la taille des fichiers

### Prévisualisation avancée
- **PDF** : Extraction de texte avec `pdftotext` ou `mutool`
- **Images** : Support SVG, rotation automatique selon EXIF
- **Vidéos** : Génération de miniatures avec `ffmpegthumbnailer`
- **Archives** : Liste du contenu (tar, zip, 7z, rar, etc.)
- **Code source** : Coloration syntaxique avec `bat`
- **Markdown** : Rendu avec `glow` ou conversion en texte
- **JSON** : Formatage avec `jq` ou Python
- **Documents Office** : Conversion avec `pandoc` (docx, xlsx, pptx, odt)

### Navigation rapide
Raccourcis pour accéder rapidement aux dossiers courants :
- `gh` → `~` (home)
- `gd` → `~/Documents`
- `gD` → `~/Downloads`
- `gp` → `~/Pictures`
- `gv` → `~/Videos`
- `gm` → `~/Music`
- `gt` → `/tmp`
- `gr` → `/` (racine)
- `ge` → `/etc`
- `gu` → `/usr`
- `go` → `/opt`
- `gl` → `/var/log`

## ⌨️ Raccourcis clavier

### Manipulation de fichiers
- `yy` - Copier
- `dd` - Couper
- `pp` - Coller
- `po` - Coller en écrasant
- `pl` - Coller comme lien symbolique (relatif)
- `pL` - Coller comme lien symbolique (absolu)
- `phl` - Coller comme lien physique
- `DD` - Déplacer vers la corbeille
- `dD` - Supprimer définitivement
- `E` - Éditer le fichier
- `C` - Renommer (console)
- `A` - Renommer (début du nom)
- `I` - Renommer (fin du nom)

### Sélection multiple
- `<Space>` - Marquer/démarquer le fichier courant
- `v` - Marquer/démarquer tous les fichiers
- `uv` - Désélectionner tous les fichiers
- `V` - Mode visuel (sélection par déplacement)
- `uV` - Désélectionner en mode visuel

### Création
- `mkd` - Créer un répertoire
- `mkf` - Créer un fichier vide

### Compression et extraction
- `ec` - Créer une archive tar.gz
- `ez` - Créer une archive zip
- `ex` - Extraire une archive

### Recherche et tri
- `f` - Rechercher un fichier
- `/` - Rechercher dans le contenu
- `n` - Prochain résultat
- `N` - Résultat précédent

**Tri :**
- `or` - Inverser l'ordre de tri
- `oz` - Tri aléatoire
- `os` - Trier par taille
- `ob` - Trier par nom
- `on` - Trier par ordre naturel
- `om` - Trier par date de modification
- `oc` - Trier par date de création
- `oa` - Trier par date d'accès
- `ot` - Trier par type
- `oe` - Trier par extension

### Onglets
- `<C-n>` - Nouvel onglet
- `<C-w>` - Fermer l'onglet courant
- `<TAB>` - Onglet suivant
- `<S-TAB>` - Onglet précédent
- `gt` - Onglet suivant
- `gT` - Onglet précédent
- `gn` - Nouvel onglet

### Git
- `gst` - `git status`
- `gpl` - `git pull`
- `gps` - `git push`
- `gad` - `git add` (fichiers sélectionnés)
- `gcm` - `git commit -m` (avec message)
- `gdf` - `git diff`

### Permissions
- `+x` - Ajouter permission d'exécution
- `-x` - Retirer permission d'exécution
- `+w` - Ajouter permission d'écriture
- `-w` - Retirer permission d'écriture

### Affichage
- `zh` - Afficher/masquer les fichiers cachés
- `zp` - Activer/désactiver la prévisualisation des fichiers
- `zP` - Activer/désactiver la prévisualisation des répertoires
- `zv` - Activer/désactiver le script de prévisualisation
- `zi` - Activer/désactiver la prévisualisation des images

### Ouvrir avec
- `o` - Ouvrir avec l'application par défaut
- `ow` - Ouvrir avec (choix de l'application)
- `r` - Ouvrir avec (liste des applications possibles)

### Utilitaires
- `S` - Ouvrir un shell dans le répertoire courant
- `Y` - Copier le chemin complet
- `bs` - Créer un lien symbolique
- `du` - Afficher l'utilisation de l'espace disque
- `df` - Afficher l'espace disque disponible

## 🐍 Commandes personnalisées

### `:fzf_select`
Recherche de fichiers et répertoires avec `fzf`. Utilise `fzf` pour une navigation rapide et intuitive.

### `:compress <filename>`
Compresse les fichiers sélectionnés dans une archive. Utilise `apack` pour créer l'archive.

### `:extract`
Extrait les archives sélectionnées dans le répertoire courant. Utilise `aunpack` pour l'extraction.

### `:mkcd <dirname>`
Crée un répertoire et se déplace automatiquement dedans.

### `:paste_as_root`
Colle les fichiers avec les privilèges root (utilise `sudo`).

### `:fzf_rga`
Recherche dans le contenu des fichiers avec `ripgrep` et `fzf`. Nécessite `rga-fzf`.

## 🔧 Dépendances recommandées

### Prévisualisation améliorée (essentiel)
```bash
# Sur Debian/Ubuntu
sudo apt install atool poppler-utils w3m lynx mediainfo exiftool odt2txt

# Sur Arch Linux
sudo pacman -S atool poppler w3m lynx mediainfo perl-image-exiftool odt2txt
```

### Outils optionnels (recommandés)
```bash
# Sur Debian/Ubuntu
sudo apt install bat fzf ripgrep highlight glow

# Sur Arch Linux
sudo pacman -S bat fzf ripgrep highlight glow
```

### Pour les images
```bash
# Sur Debian/Ubuntu
sudo apt install ffmpegthumbnailer imagemagick

# Sur Arch Linux
sudo pacman -S ffmpegthumbnailer imagemagick
```

### Pour la recherche avancée
```bash
# rga-fzf (recherche dans le contenu avec ripgrep + fzf)
# Installation via cargo ou AUR
cargo install ripgrep-all
# Puis configurer rga-fzf selon votre setup
```

## 📦 Installation

1. **Copier les fichiers de configuration** :
   ```bash
   cp -r ranger/.config/ranger ~/.config/
   ```

2. **Rendre scope.sh exécutable** :
   ```bash
   chmod +x ~/.config/ranger/scope.sh
   ```

3. **Installer les dépendances** (voir section ci-dessus)

4. **Lancer ranger** :
   ```bash
   ranger
   ```

Les fichiers de configuration seront automatiquement chargés !

## 📝 Notes

- La configuration utilise `kitty` pour la prévisualisation d'images. Si vous utilisez un autre terminal, modifiez `preview_images_method` dans `rc.conf`.
- Les commandes Git nécessitent que vous soyez dans un dépôt Git.
- Certaines fonctionnalités de prévisualisation nécessitent les outils appropriés installés (voir dépendances).
- Les raccourcis peuvent être personnalisés dans `rc.conf` selon vos préférences.

## 🔗 Ressources

- [Documentation officielle de Ranger](https://github.com/ranger/ranger)
- [Wiki de Ranger](https://github.com/ranger/ranger/wiki)
