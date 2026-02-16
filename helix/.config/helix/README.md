# Configuration Helix

Ce dossier contient la configuration complète de l'éditeur de texte Helix, un éditeur modal moderne inspiré de Vim et Kakoune.

## Structure des fichiers

```
helix/
├── config.toml          # Configuration principale de l'éditeur
├── languages.toml        # Configuration des langages et LSP
├── themes/               # Thèmes personnalisés
│   └── catppuccin_mocha.toml
└── README.md             # Ce fichier
```

## Fichiers de configuration

### `config.toml`

Fichier de configuration principal qui définit :

- **Thème** : `catppuccin_mocha`
- **Éditeur** : numéros de ligne relatifs, support souris, complétion automatique, formatage automatique
- **LSP** : messages d'aide, snippets, indices inline, signature help
- **Raccourcis clavier** : configurations personnalisées pour les modes normal, insertion et sélection
- **File picker** : configuration avancée avec support Git
- **Auto-pairs** : appariement automatique des parenthèses, crochets, guillemets
- **Recherche** : recherche intelligente avec wrap-around
- **Whitespace** : affichage des espaces et tabulations
- **Indent guides** : guides d'indentation visuels
- **Soft wrap** : retour à la ligne automatique pour les longues lignes

#### Sections principales

- `[editor]` : Configuration de base de l'éditeur (scroll, cursor, completion, etc.)
- `[editor.statusline]` : Personnalisation de la barre d'état avec séparateurs
- `[editor.lsp]` : Configuration du Language Server Protocol
- `[editor.cursor-shape]` : Formes du curseur selon les modes (block, bar, underline)
- `[editor.file-picker]` : Configuration du sélecteur de fichiers avec Git
- `[editor.auto-pairs]` : Appariement automatique des caractères
- `[editor.search]` : Options de recherche intelligente
- `[editor.whitespace]` : Affichage des caractères invisibles
- `[editor.indent-guides]` : Guides d'indentation
- `[editor.gutters]` : Organisation des marges (diff, diagnostics, numéros de ligne)
- `[editor.soft-wrap]` : Configuration du retour à la ligne automatique
- `[keys.normal]`, `[keys.insert]`, `[keys.select]` : Raccourcis clavier personnalisés

### `languages.toml`

Configure le support des langages de programmation :

- **Serveurs LSP** : Configuration pour Rust, Python, TypeScript, JavaScript, Go, Nix, Lua, YAML, Markdown, etc.
- **Formatters** : Integration avec black, prettier, rustfmt, alejandra, stylua, shfmt, etc.
- **Indentation** : Paramètres spécifiques à chaque langage
- **Auto-complétion** et **formatage automatique** activés pour la plupart des langages

#### Serveurs LSP configurés

- `nil` - Nix
- `rust-analyzer` - Rust (avec clippy)
- `pylsp` - Python
- `typescript-language-server` - TypeScript/JavaScript
- `vscode-json-language-server` - JSON
- `vscode-html-language-server` - HTML
- `vscode-css-language-server` - CSS
- `lua-language-server` - Lua
- `gopls` - Go
- `yaml-language-server` - YAML
- `marksman` - Markdown

#### Langages configurés

- **Rust** (rust-analyzer + rustfmt + clippy) - Tab width: 4
- **Python** (pylsp + black) - Tab width: 4
- **TypeScript/JavaScript** (typescript-language-server + prettier) - Tab width: 2
- **Go** (gopls) - Tab width: 4 (tabs)
- **Nix** (nil + alejandra) - Tab width: 2
- **Lua** (lua-language-server + stylua) - Tab width: 2
- **Bash** (shfmt) - Tab width: 2
- **YAML** (yaml-language-server) - Tab width: 2
- **Markdown** (marksman) - Tab width: 2, soft-wrap activé
- **JSON** (vscode-json-language-server + prettier) - Tab width: 2
- **HTML** (vscode-html-language-server + prettier) - Tab width: 2
- **CSS** (vscode-css-language-server + prettier) - Tab width: 2
- **TOML** - Tab width: 2
- **C/C++** - Tab width: 4

### `themes/catppuccin_mocha.toml`

Thème Catppuccin Mocha personnalisé avec :

- **Palette de couleurs** complète basée sur Catppuccin Mocha
- **Syntax highlighting** détaillé pour tous les types de tokens
- **Interface utilisateur** : curseurs, sélections, barres d'état
- **Diagnostics** : couleurs distinctes pour erreurs, avertissements, informations

## Installation et utilisation

### Prérequis

Assurez-vous d'avoir installé les LSP et formatters nécessaires :

```bash
# Rust
cargo install rust-analyzer

# Python
pip install python-lsp-server black

# Node.js/TypeScript
npm install -g typescript-language-server prettier

# Go
go install golang.org/x/tools/gopls@latest

# Nix
nix-env -iA nixpkgs.alejandra nixpkgs.nil

# Lua
# Via Homebrew: brew install lua-language-server stylua
# Ou via npm: npm install -g lua-language-server
# stylua: https://github.com/JohnnyMorganz/StyLua

# Bash
# shfmt: go install mvdan.cc/sh/v3/cmd/shfmt@latest

# YAML
npm install -g yaml-language-server

# Markdown
# marksman: https://github.com/artempyanykh/marksman

# Autres outils utiles
npm install -g vscode-langservers-extracted  # HTML, CSS, JSON
```

### Configuration

1. Copiez les fichiers dans `~/.config/helix/`
2. Le thème sera automatiquement chargé depuis `themes/`
3. Lancez Helix avec `hx <fichier>`

## Raccourcis clavier personnalisés

### Mode Normal

- `Ctrl+S` : Sauvegarder (`:w`)
- `Ctrl+Q` : Quitter (`:q`)
- `Ctrl+Z` : Annuler (`undo`)
- `Ctrl+Y` : Rétablir (`redo`)
- `X` : Étendre la sélection à la ligne au-dessus
- `Alt+J` : Déplacer la ligne vers le bas (couper-coller)
- `Alt+K` : Déplacer la ligne vers le haut (couper-coller)
- `Ctrl+J` : Aller à la prochaine position de saut (`jump_forward`)
- `Ctrl+K` : Aller à la position de saut précédente (`jump_backward`)
- `Esc` : Réduire la sélection et garder la sélection primaire

### Espace (leader key)

- `Space + q/Q` : Quitter (`:q` / `:q!`)
- `Space + w/W` : Sauvegarder (`:w` / `:wq`)
- `Space + f` : Sélecteur de fichiers
- `Space + F` : Sélecteur de fichiers dans le répertoire courant
- `Space + b` : Sélecteur de buffers
- `Space + /` : Recherche globale
- `Space + h` : Sélectionner le nœud précédent (sibling)
- `Space + l` : Sélectionner le nœud suivant (sibling)

### Mode Insertion

- `Ctrl+S` : Sauvegarder
- `Alt+X` : Retour au mode normal
- `j+k` : Retour au mode normal (séquence de touches)

### Mode Sélection

- `X` : Étendre la sélection à la ligne au-dessus
- `Esc` : Réduire la sélection, garder la sélection primaire et retourner en mode normal

## Fonctionnalités principales

### Édition modal

- **Mode Normal** : Navigation et commandes
- **Mode Insertion** : Saisie de texte
- **Mode Sélection** : Sélection et manipulation de texte

### LSP Integration

- **Auto-complétion** intelligente avec timeout configurable
- **Diagnostics** en temps réel avec affichage dans les marges
- **Go to definition** et **references** (incluant les déclarations)
- **Rename symbol** et **formatage automatique**
- **Inlay hints** pour les types et paramètres
- **Signature help** avec documentation automatique
- **Snippets** activés pour tous les langages supportés
- **Messages LSP** affichés dans la barre d'état

### Personnalisation

- **Thème** Catppuccin Mocha cohérent avec modes colorés
- **Règles** à 80 et 120 caractères
- **Guides d'indentation** visibles avec caractère personnalisé
- **Soft wrap** activé pour les longues lignes (max 25 colonnes, max indent 40)
- **Bufferline** pour la navigation entre fichiers (mode multiple)
- **Whitespace** : affichage des espaces (`·`), tabulations (`→`), et retours à la ligne (`⏎`)
- **File picker** : support Git (ignore, exclude, global), suivi des symlinks
- **Auto-pairs** : appariement automatique pour `()`, `{}`, `[]`, `""`, `` ` ``, `<>`
- **Recherche** : smart-case et wrap-around activés
- **Curseur** : ligne de curseur activée, colonne désactivée
- **Scroll** : 3 lignes par défaut, scrolloff de 8 lignes
- **Souris** : support activé avec coller au clic molette

## Fonctionnalités avancées

### File Picker
- Support complet de Git (ignore, exclude, global)
- Suivi des symlinks avec déduplication
- Affichage des fichiers cachés configurable
- Navigation dans les répertoires parents

### Auto-pairs
Appariement automatique configuré pour :
- Parenthèses : `()` 
- Accolades : `{}`
- Crochets : `[]`
- Guillemets : `""`
- Backticks : `` ` ``
- Chevrons : `<>`

### Recherche
- **Smart-case** : recherche insensible à la casse sauf si majuscules présentes
- **Wrap-around** : retour au début après la fin du document

### Whitespace & Indentation
- Affichage visuel des espaces, tabulations et retours à la ligne
- Guides d'indentation avec caractère personnalisé (`┊`)
- Skip-levels configuré pour éviter la surcharge visuelle

## Maintenance

Pour mettre à jour la configuration :

1. Mettre à jour les LSP et formatters régulièrement
2. Vérifier la compatibilité des versions avec Helix
3. Tester les nouveaux raccourcis après modifications
4. Consulter les changelogs de Helix pour les nouvelles fonctionnalités

## Ressources

- [Documentation officielle Helix](https://docs.helix-editor.com/)
- [Thème Catppuccin](https://github.com/catppuccin/helix)
- [Language Server Protocol](https://microsoft.github.io/language-server-protocol/)
- [Guide des raccourcis Helix](https://docs.helix-editor.com/keymap.html)
- [Configuration des langages](https://docs.helix-editor.com/languages.html)

---

**Dernière mise à jour**: 2026-02-16
