# Configuration WezTerm

Configuration complète de **WezTerm**, un émulateur de terminal moderne et performant avec support GPU.

## 📁 Structure

```
wezterm/
└── .config/
    └── wezterm/
        ├── wezterm.lua              # Configuration principale de WezTerm
        ├── themes/                  # Thèmes personnalisés
        │   ├── gruvbox-dark.lua
        │   ├── catppuccin-mocha.lua
        │   └── nord.lua
        └── README.md               # Ce fichier
```

## ⚙️ Configuration principale (`wezterm.lua`)

### Thème actif
- **Thème par défaut** : `gruvbox-dark` (modifiable ligne 7)
- Autres thèmes disponibles : `catppuccin-mocha`, `nord`
- Chaque thème inclut une personnalisation complète de la barre d'onglets avec couleurs actives/inactives et effets de survol

### Raccourcis clavier configurés

#### Gestion des panneaux (ALT)
- `ALT + Enter` : Diviser horizontalement
- `ALT + SHIFT + Enter` : Diviser verticalement
- `ALT + w` : Fermer le panneau actuel (avec confirmation)
- `ALT + Flèches` : Naviguer entre les panneaux (gauche/droite/haut/bas)

#### Gestion des onglets (ALT)
- `ALT + t` : Nouvel onglet
- `ALT + q` : Fermer l'onglet actuel (avec confirmation)
- `ALT + 1-8` : Activer l'onglet 1-8
- `ALT + c` : Copier vers le presse-papiers et la sélection primaire
- `ALT + v` : Coller depuis le presse-papiers

#### Déplacement des onglets (CTRL + ALT)
- `CTRL + ALT + Flèches gauche/droite` : Déplacer l'onglet (gauche/droite)
- `CTRL + ALT + Flèches haut/bas` : Activer le dernier onglet
- `CTRL + ALT + 1-8` : Déplacer l'onglet vers la position 1-8

#### Taille de police (ALT)
- `ALT + =` : Augmenter la taille de police
- `ALT + -` : Diminuer la taille de police
- `ALT + 0` : Réinitialiser la taille de police

### Configuration des polices
- **Police principale** : Lilex Nerd Font Mono
- **Polices de secours** : SauceCodePro Nerd Font Mono, FiraCode Nerd Font Mono, Symbols Nerd Font Mono
- **Taille par défaut** : 16px
- **Hauteur de ligne** : 1.1
- **Police de la barre de titre** : Lilex Nerd Font Mono (Italique, 12px)

### Performance et rendu
- **FPS maximum** : 120
- **FPS d'animation** : 1 (optimisé pour les performances)
- **Front-end** : OpenGL (accélération GPU)
- **WebGPU** : Préférence haute performance activée
- **EGL** : Préféré pour le rendu (meilleure compatibilité)
- **FreeType** : 
  - Load target : Light (optimisation du chargement)
  - Render target : HorizontalLcd (meilleure qualité d'affichage)
- **Term** : xterm-256color
- **Avertissements** : Glyphes manquants désactivés

### Apparence
- **Opacité du fond** : 0.98 (légère transparence)
- **Barre de défilement** : Masquée (`enable_scroll_bar = false`)
- **Barre d'onglets** : Style moderne (`use_fancy_tab_bar = true`)
- **Masquage automatique** : Barre d'onglets masquée si un seul onglet
- **Couleur de la barre de titre** : Adaptée au thème actif

### Support Wayland
- **Détection automatique** : Wayland activé automatiquement si détecté dans l'environnement
- Vérifie les variables `WAYLAND_DISPLAY` et `XDG_SESSION_TYPE`

### Souris
- **Clic droit** : Copier vers le presse-papiers
- **Clic molette** : Diviser horizontalement
- `SHIFT + Clic molette` : Fermer le panneau (sans confirmation)

## 🎨 Thèmes disponibles

Tous les thèmes incluent une personnalisation complète avec :
- Couleurs ANSI et brights
- Personnalisation de la barre d'onglets
- Couleurs de sélection et curseur
- Effets de survol sur les onglets

### Gruvbox Dark
Thème sombre basé sur la palette Gruvbox, idéal pour une utilisation prolongée.
- Couleur active : Bleu (#83a598)
- Couleur d'accent : Orange (#fe8019)

### Catppuccin Mocha
Variante sombre du thème Catppuccin avec des couleurs douces et modernes.
- Couleur active : Bleu (#89b4fa)
- Couleur d'accent : Rose (#f5e0dc)

### Nord
Thème inspiré du design Nord, avec des couleurs froides et épurées.
- Couleur active : Bleu (#81a1c1)
- Couleur d'accent : Cyan (#88c0d0)

## 📦 Installation et gestion

### 1. Installation de la configuration

Pour utiliser cette configuration :

```bash
# Créer le répertoire de configuration si nécessaire
mkdir -p ~/.config/wezterm

# Créer le lien symbolique vers la configuration WezTerm
ln -sf ~/Desktop/Github/dotfiles/wezterm/.config/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

# Créer le lien symbolique pour les thèmes
ln -sf ~/Desktop/Github/dotfiles/wezterm/.config/wezterm/themes ~/.config/wezterm/themes
```

### 2. Changement de thème

Pour changer de thème :

1. Éditer le fichier `wezterm.lua`
2. Modifier la ligne 7 :
   ```lua
   local THEME = "gruvbox-dark"  -- ou "catppuccin-mocha", "nord"
   ```
3. Recharger WezTerm (`CTRL + SHIFT + R`)

### 3. Création d'un thème personnalisé

Pour ajouter un nouveau thème :

1. Créer un fichier `<nom>.lua` dans le dossier `themes/`
2. Structure du fichier :
   ```lua
   -- Nom du thème
   return {
       foreground = "#ffffff",
       background = "#000000",
       cursor_bg = "#ffffff",
       cursor_fg = "#000000",
       cursor_border = "#ffffff",
       selection_fg = "#ffffff",
       selection_bg = "#444444",
       scrollbar_thumb = "#444444",
       split = "#444444",
       ansi = {
           "#000000", -- black
           "#ff0000", -- red
           "#00ff00", -- green
           "#ffff00", -- yellow
           "#0000ff", -- blue
           "#ff00ff", -- magenta
           "#00ffff", -- cyan
           "#ffffff", -- white
       },
       brights = {
           "#444444", -- bright black
           "#ff0000", -- bright red
           "#00ff00", -- bright green
           "#ffff00", -- bright yellow
           "#0000ff", -- bright blue
           "#ff00ff", -- bright magenta
           "#00ffff", -- bright cyan
           "#ffffff", -- bright white
       },
       tab_bar = {
           background = "#000000",
           inactive_tab_edge = "#444444",
           active_tab = { bg_color = "#0000ff", fg_color = "#ffffff", intensity = "Bold" },
           inactive_tab = { bg_color = "#000000", fg_color = "#888888" },
           inactive_tab_hover = { bg_color = "#222222", fg_color = "#ffffff" },
           new_tab = { bg_color = "#000000", fg_color = "#ffffff", intensity = "Bold" },
           new_tab_hover = { bg_color = "#222222", fg_color = "#ff0000" },
       },
   }
   ```

### 4. Personnalisation des raccourcis

Les raccourcis sont définis dans la section `config.keys`. Pour ajouter/modifier :

```lua
table.insert(config.keys, { 
    mods = "ALT", 
    key = "x", 
    action = wezterm.action.VotreAction 
})
```

### 5. Optimisation des performances

La configuration inclut plusieurs optimisations pour les performances :
- Rendu OpenGL avec accélération GPU
- FreeType optimisé pour le chargement et le rendu
- FPS d'animation réduit pour économiser les ressources
- WebGPU configuré pour haute performance

Pour ajuster les performances, modifiez dans `wezterm.lua` :
- `config.max_fps` : FPS maximum (défaut : 120)
- `config.animation_fps` : FPS des animations (défaut : 1)
- `config.front_end` : "OpenGL" ou "Software" (défaut : "OpenGL")

### 6. Synchronisation avec Git

```bash
# Ajouter les changements
git add wezterm/

# Commiter les modifications
git commit -m "Update WezTerm configuration"

# Pousser les changements
git push
```

## 🔧 Dépannage

### Problèmes courants

1. **Polices non trouvées** : Installez les Nerd Fonts requises (voir section ci-dessous)
2. **Thème non appliqué** : Vérifiez la syntaxe du fichier de thème et le chemin du fichier
3. **Raccourcis non fonctionnels** : Rechargez WezTerm avec `CTRL + SHIFT + R`
4. **Performances médiocres** : Vérifiez que votre système supporte OpenGL et que les pilotes GPU sont à jour
5. **Wayland non détecté** : Vérifiez que les variables d'environnement `WAYLAND_DISPLAY` ou `XDG_SESSION_TYPE` sont définies

### Installation des polices requises

```bash
# Avec Homebrew (macOS)
brew install font-lilex-nerd-font
brew install font-sauce-code-pro-nerd-font
brew install font-fira-code-nerd-font

# Ou télécharger depuis https://www.nerdfonts.com/
# Puis installer manuellement dans ~/Library/Fonts/ (macOS) ou ~/.fonts/ (Linux)
```

### Réinitialisation complète

Pour revenir à la configuration par défaut :

```bash
# Supprimer le lien symbolique
rm ~/.config/wezterm/wezterm.lua

# Supprimer les thèmes personnalisés
rm -rf ~/.config/wezterm/themes

# Redémarrer WezTerm pour utiliser la configuration par défaut
```

### Vérification de la configuration

Pour vérifier que votre configuration est correctement chargée :

1. Ouvrez WezTerm
2. Appuyez sur `CTRL + SHIFT + P` pour ouvrir la palette de commandes
3. Tapez "Show Configuration" pour voir la configuration actuelle
4. Vérifiez que les chemins des fichiers sont corrects

## 📚 Ressources utiles

- [Documentation officielle de WezTerm](https://wezfurlong.org/wezterm/config/)
- [Configuration Lua](https://wezfurlong.org/wezterm/config/lua/)
- [Key Bindings](https://wezfurlong.org/wezterm/config/key-bindings.html)
- [Color Schemes](https://wezfurlong.org/wezterm/config/appearance.html#color-schemes)
- [Performance Tuning](https://wezfurlong.org/wezterm/config/performance.html)

---

*Mise à jour : Février 2026*
