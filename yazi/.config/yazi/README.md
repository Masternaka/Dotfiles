# Configuration Yazi

Configuration complète de **Yazi**, un gestionnaire de fichiers terminal moderne et performant écrit en Rust.

## 📁 Structure

```
yazi/
└── .config/
    └── yazi/
        ├── yazi.toml              # Configuration principale
        ├── keymap.toml            # Raccourcis clavier personnalisés
        ├── theme.toml             # Activation des thèmes (flavors)
        └── flavors/               # Thèmes Gruvbox
            ├── gruvbox-dark.yazi/
            │   ├── flavor.toml
            │   └── tmtheme.xml
            └── gruvbox-light.yazi/
                ├── flavor.toml
                └── tmtheme.xml
```

## ⚙️ Configuration principale (`yazi.toml`)

### Gestionnaire de fichiers (`[manager]`)
- **Ratio des colonnes** : `[1, 4, 3]` (parent:current:preview)
- **Tri par défaut** : Alphabétique
- **Tri sensible à la casse** : Désactivé
- **Tri inversé** : Désactivé
- **Dossiers en premier** : Activé
- **Fichiers cachés** : Masqués par défaut (`show_hidden = false`)
- **Liens symboliques** : Affichés
- **Défilement** : Offset de 5 lignes (`scrolloff = 5`)
- **Mode de ligne** : Taille (`linemode = "size"`)
- **Événements souris** : Clic et défilement activés
- **Format du titre** : `Yazi: {cwd}`

### Prévisualisation (`[preview]`)
- **Retour à la ligne** : Désactivé (`wrap = "no"`)
- **Taille de tabulation** : 2 espaces
- **Dimensions maximales** : 600x900 pixels
- **Cache** : Désactivé (répertoire vide)
- **Délai d'affichage des images** : 30ms
- **Filtre d'image** : Triangle (qualité optimale)
- **Qualité d'image** : 75%
- **Ueberzug** : Scale 1, offset [0, 0, 0, 0]

### Ouverture de fichiers (`[opener]`)

#### Éditeurs
- Éditeur par défaut (`$EDITOR`)
- Neovim (`nvim`)
- Vim (`vim`)
- Nano (`nano`)

#### Applications génériques
- `xdg-open` pour les fichiers génériques

#### Médias
- **Vidéo** : MPV, VLC
- **Images** : Feh, sxiv, imv, Eye of GNOME
- **PDF** : Zathura, Evince, Okular
- **Audio** : MPV, Rhythmbox

#### Documents
- **Markdown** : Glow (avec prévisualisation), éditeur

#### Archives
- **Extraction** : unar, 7zip, tar
- Support de nombreux formats : zip, rar, 7z, tar, gzip, xz, zstd, bzip2, lzma, compress, archive, cpio, arj, xar, ms-cab

### Règles d'ouverture (`[open]`)
- **Dossiers** : Édition, ouverture, révélation
- **Texte** : Édition automatique (text/*, JSON, JavaScript, shell scripts)
- **Markdown** : Prévisualisation avec Glow
- **Images** : Visualisation avec applications configurées
- **Vidéos/Audio** : Lecture avec lecteurs multimédias
- **PDF** : Ouverture avec lecteurs PDF
- **Archives** : Extraction automatique
- **Fichiers vides** : Édition
- **Fallback** : Ouverture générique

### Tâches (`[tasks]`)
- **Workers micro** : 5
- **Workers macro** : 10
- **Tentatives bizarres** : 3
- **Allocation mémoire images** : 512MB
- **Limite d'image** : 10000x10000 pixels
- **Suppression du préchargement** : Désactivé

### Plugins (`[plugin]`)

#### Préchargeurs
- Détection automatique du type MIME pour tous les fichiers

#### Prévisualiseurs
- **Dossiers** : Prévisualisation de structure
- **Code** : Coloration syntaxique (text/*, XML, JavaScript)
- **JSON** : Formatage JSON
- **CSV** : Affichage formaté
- **Markdown** : Rendu avec Glow
- **Médias** : Images, vidéos, audio
- **PDF** : Prévisualisation PDF
- **Archives** : Liste du contenu (zip, tar, bzip2, 7z, rar, gzip)

### Interface (`[input]`, `[select]`, `[pick]`, `[confirm]`)
- **Curseur clignotant** : Activé dans les champs de saisie
- **Menus personnalisés** : Positions et tailles configurées pour tous les dialogues
- **Confirmations** : Messages personnalisés pour corbeille, suppression, écrasement, quitter

### Logs (`[log]`)
- **Logs activés** : Désactivé (`enabled = false`)

## ⌨️ Raccourcis clavier (`keymap.toml`)

### Navigation de base
- `h/j/k/l` - Navigation vim (gauche/bas/haut/droite)
- `H/J/K/L` - Navigation rapide (5 lignes)
- `gg/G` - Aller en haut/bas de la liste
- `<C-u>/<C-d>` - Page précédente/suivante (50%)
- `<C-b>/<C-f>` - Page complète haut/bas
- `<PageUp>/<PageDown>` - Navigation par pages
- `<Left>/<Right>` - Retour/entrée dans dossier
- `<Right>` (smart) - Smart enter avec plugin

### Sélection
- `<Space>` - Toggle sélection + descendre
- `v` - Mode visuel
- `V` - Quitter mode visuel
- `<C-a>` - Tout sélectionner
- `<C-r>` - Tout désélectionner

### Opérations sur fichiers
- `o` - Ouvrir
- `O` - Ouvrir avec... (interactif)
- `<Enter>` - Ouvrir
- `y` - Copier
- `x` - Couper
- `p` - Coller
- `P` - Coller (écraser)
- `d` - Supprimer (corbeille)
- `D` - Supprimer définitivement
- `a` - Créer fichier/dossier
- `r` - Renommer
- `R` - Renommage en masse (bulk-rename)
- `C` - Compresser sélection

### Recherche et filtrage
- `/` - Rechercher (smart)
- `?` - Rechercher précédent (smart)
- `n/N` - Résultat suivant/précédent
- `f` - Filtrer (smart)
- `F` - Rechercher récursif
- `S` - Recherche fd
- `sr` - Recherche ripgrep

### Tri
- `sm` - Trier par date de modification
- `sc` - Trier par date de création
- `se` - Trier par extension
- `sa` - Trier alphabétique
- `sn` - Trier naturel
- `ss` - Trier par taille

### Navigation rapide (goto)
- `gh` - Aller au home (`~`)
- `gc` - Aller à `.config`
- `gd` - Aller à `~/Downloads`
- `gD` - Aller à `~/Documents`
- `gt` - Aller à `/tmp`
- `gr` - Aller à `/` (racine)
- `g<Space>` - cd interactif
- `g.` - Aller au dossier précédent
- `gp` - Aller à `~/Projects`
- `gw` - Aller à `~/Workspace`
- `zz` - Zoxide jump (si plugin installé)
- `m` - Sauver marque-page
- `'` - Aller au marque-page

### Onglets
- `t` - Nouvel onglet
- `<C-w>` / `<C-q>` - Fermer onglet
- `1-9` - Aller à l'onglet 1-9
- `[` / `]` - Onglet précédent/suivant
- `<C-Left>` / `<C-Right>` - Onglet précédent/suivant
- `{` / `}` - Déplacer onglet gauche/droite

### Affichage
- `zh` - Toggle fichiers cachés
- `zs` - Mode ligne : taille
- `zp` - Mode ligne : permissions
- `zm` - Mode ligne : date modif
- `zP` - Maximiser preview

### Copier chemin
- `cc` - Copier chemin complet
- `cd` - Copier nom dossier
- `cf` - Copier nom fichier
- `cn` - Copier nom sans extension
- `cw` - Copier chemin:ligne

### Terminal et outils
- `T` - Ouvrir kitty dans le dossier courant
- `;` - Exécuter commande shell
- `:` - Exécuter shell (bloquant)
- `w` - Afficher tâches

### Aide et quitter
- `~` / `?` - Aide
- `q` - Quitter
- `Q` - Quitter sans cd
- `<Esc>` / `<C-c>` - Échap / Annuler

### Raccourcis dans les menus
- **Tasks** : Navigation vim, inspection, annulation
- **Select** : Navigation vim, validation
- **Input** : Navigation Emacs, historique, suppression
- **Completion** : Navigation vim, validation
- **Help** : Navigation vim, pages

## 🎨 Thèmes (Flavors)

### Activation (`theme.toml`)
- **Thème sombre** : `gruvbox-dark` (détection automatique)
- **Thème clair** : `gruvbox-light` (détection automatique)

### Détection automatique dark/light
Yazi détecte le mode sombre/clair du terminal via :
1. **`$COLORFGBG`** - Variable d'environnement (Kitty, Alacritty, WezTerm)
2. **OSC 11** - Requête de couleur de fond terminal (méthode moderne)

Si aucune méthode n'est disponible, le mode `dark` est utilisé par défaut.

### Gruvbox Dark
Thème sombre basé sur la palette Gruvbox, idéal pour une utilisation prolongée.
- Couleur active : Jaune (#fabd2f)
- Couleur CWD : Bleu (#83a598)
- Marqueurs : Vert (copie), Rouge (coupe), Violet (marqué)

### Gruvbox Light
Variante claire du thème Gruvbox avec des couleurs adaptées.
- Palette inversée pour une meilleure lisibilité en mode clair

### Personnalisation
Le `theme.toml` peut surcharger n'importe quelle valeur d'un flavor sans modifier les fichiers du flavor :

```toml
[flavor]
dark  = "gruvbox-dark"
light = "gruvbox-light"

# Surcharges personnelles
[manager]
cwd = { fg = "#fabd2f", bold = true }
border_style = { fg = "#928374" }
```

## 📦 Installation

### 1. Installation de Yazi

```bash
# Avec Cargo
cargo install --git https://github.com/yazi-rs/yazi --locked

# Avec Homebrew (macOS)
brew install yazi

# Avec Pacman (Arch Linux)
yay -S yazi-bin  # ou yazi-git
```

### 2. Installation de la configuration

```bash
# Créer le répertoire de configuration
mkdir -p ~/.config/yazi

# Copier les fichiers de configuration
cp -r yazi/.config/yazi/* ~/.config/yazi/

# Ou créer des liens symboliques
ln -sf ~/Desktop/Github/dotfiles/yazi/.config/yazi/yazi.toml ~/.config/yazi/yazi.toml
ln -sf ~/Desktop/Github/dotfiles/yazi/.config/yazi/keymap.toml ~/.config/yazi/keymap.toml
ln -sf ~/Desktop/Github/dotfiles/yazi/.config/yazi/theme.toml ~/.config/yazi/theme.toml
ln -sf ~/Desktop/Github/dotfiles/yazi/.config/yazi/flavors ~/.config/yazi/flavors
```

### 3. Dépendances optionnelles

Pour profiter pleinement de toutes les fonctionnalités :

```bash
# Prévisualisation Markdown
cargo install glow

# Recherche de fichiers
cargo install fd-find

# Recherche dans le contenu
cargo install ripgrep

# Navigation intelligente
cargo install zoxide

# Extraction d'archives
brew install unar  # macOS
sudo apt install unar  # Debian/Ubuntu

# Visualisation d'images
brew install feh sxiv imv  # ou selon votre distribution

# Lecteurs multimédias
brew install mpv vlc  # ou selon votre distribution

# Lecteurs PDF
brew install zathura  # ou selon votre distribution
```

## 🔧 Personnalisation

### Modifier les raccourcis
Éditez `keymap.toml` et ajoutez vos raccourcis dans la section appropriée :

```toml
[manager]
prepend_keymap = [
    { on = ["<votre-touche>"], run = "votre-commande", desc = "Description" },
]
```

### Ajouter des applications d'ouverture
Éditez `yazi.toml` dans la section `[opener]` :

```toml
[opener]
image = [
    { run = 'votre-app "$@"', orphan = true, desc = "Votre app" },
]
```

### Personnaliser la prévisualisation
Modifiez les paramètres dans `yazi.toml` sous `[preview]` :

```toml
[preview]
max_width = 800
max_height = 1200
image_quality = 90
```

## 📚 Ressources

- [Documentation officielle de Yazi](https://yazi-rs.github.io/)
- [Configuration des thèmes](https://yazi-rs.github.io/docs/configuration/theme)
- [Raccourcis clavier](https://yazi-rs.github.io/docs/keybindings)
- [Flavors officiels](https://github.com/yazi-rs/flavors)
- [Plugins Yazi](https://github.com/yazi-rs/awesome-yazi)

## 🐛 Dépannage

### Problèmes courants

1. **Thème non appliqué** : Vérifiez que les flavors sont dans `~/.config/yazi/flavors/`
2. **Prévisualisation ne fonctionne pas** : Installez les dépendances requises (glow, etc.)
3. **Applications ne s'ouvrent pas** : Vérifiez que les applications sont installées et dans le PATH
4. **Raccourcis ne fonctionnent pas** : Rechargez Yazi ou vérifiez la syntaxe dans `keymap.toml`

### Vérification de la configuration

```bash
# Vérifier que Yazi charge la configuration
yazi --help

# Vérifier les chemins de configuration
yazi --config-dir
```

---

*Mise à jour : Février 2026*
