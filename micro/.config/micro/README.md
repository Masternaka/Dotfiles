# Configuration Micro Editor

Configuration complète pour Micro, un éditeur de texte moderne et intuitif avec support des plugins et thèmes personnalisés.

## 📁 Structure

```
micro/
├── settings.json           # Configuration principale
├── bindings.json           # Raccourcis clavier personnalisés
├── colorschemes/           # Thèmes de couleurs
│   ├── catppuccin-macchiato.micro  # Thème actif
│   ├── catppuccin-mocha.micro
│   ├── catppuccin-latte.micro
│   └── catppuccin-frappe.micro
├── syntax/                 # Définitions de syntaxe
│   └── ... (100+ fichiers de syntaxe)
└── README.md               # Documentation
```

## 🎨 Thème

### Catppuccin Macchiato (actif)

Le thème par défaut utilise la palette de couleurs **Catppuccin Macchiato** :

- **Fond** : `#1E1E2E` (base)
- **Texte** : `#C6D0F5` (text)
- **Commentaires** : `#585B70` (overlay0)
- **Mots-clés** : `#CBA6F7` (mauve)
- **Chaînes** : `#A6E3A1` (green)
- **Nombres** : `#FAB387` (peach)
- **Curseur** : Ligne mise en évidence avec fond `#313244`

### Thèmes disponibles

- **Catppuccin Macchiato** (actuel) - Variante équilibrée
- **Catppuccin Mocha** - Variante sombre
- **Catppuccin Latte** - Variante claire
- **Catppuccin Frappe** - Variante douce

## ⚙️ Configuration principale

### Indentation

- **Taille de tabulation** : 2 espaces par défaut
- **Espaces au lieu de tabs** : Activé (`tabstospaces: true`)
- **Auto-indentation** : Activée (`autoindent: true`)
- **Indentation intelligente** : Activée (`smartindent: true`)

### Affichage

- **Retour à la ligne souple** : Activé (`softwrap: true`)
- **Retour à la ligne des mots** : Activé (`wordwrap: true`)
- **Règle** : Activée à la colonne 100 (`ruler: true`)
- **Colonne de couleur** : Colonne 80 (`colorcolumn: 80`)
- **Ligne de curseur** : Activée (`cursorline: true`)
- **Correspondance d'accolades** : Activée (`matchbrace: true`)
- **Coloration syntaxique** : Activée (`syntax: true`)

### Interface

- **Souris** : Activée (`mouse: true`)
- **Barre d'état** : Activée (`statusline: true`)
- **Format barre gauche** : `$(filename) $(modified) $(readonly) | $(git.branch)`
- **Format barre droite** : `$(filetype) $(line):$(col)  $(percent)  $(charset) | $(time)`

### Sauvegarde et historique

- **Sauvegarde automatique** : Désactivée (`autosave: false`)
- **Sauvegarde undo** : Activée (`saveundo: true`)
- **Sauvegarde de secours** : Activée (`backup: true`)
- **Répertoire de sauvegarde** : `~/.config/micro/backups`
- **Sauvegarde permanente** : Désactivée (`permbackup: false`)

### Presse-papiers et couleurs

- **Presse-papiers** : Externe (`clipboard: "external"`)
- **True color** : Activé (`truecolor: true`)

### Recherche

- **Insensible à la casse** : Activée (`ignorecase: true`)
- **Recherche intelligente** : Activée (`smartcase: true`)
- **Recherche incrémentale** : Activée (`incsearch: true`)
- **Surbrillance des résultats** : Désactivée (`hlsearch: false`)

### Comportement

- **Sauvegarde position curseur** : Activée (`savecursor: true`)
- **Marge de défilement** : 3 lignes (`scrollmargin: 3`)
- **Vitesse de défilement** : 2 lignes (`scrollspeed: 2`)
- **Nouvelle ligne en fin de fichier** : Activée (`eofnewline: true`)
- **Suppression espaces finaux** : Activée (`rmtrailingws: true`)
- **Suppression espaces** : Activée (`trimws: true`)

## 🔌 Plugins

Les plugins suivants sont installés et activés :

- **autoclose** - Fermeture automatique des parenthèses, crochets, etc.
- **filemanager** - Gestionnaire de fichiers intégré
- **git** - Intégration Git avec affichage de la branche
- **linter** - Vérification de code en temps réel
- **man** - Visualisation des pages de manuel
- **quote** - Gestion des guillemets
- **spellcheck** - Vérification orthographique
- **tabcomplete** - Complétion par tabulation

### Canal de plugins

Le canal officiel est configuré :
```
https://raw.githubusercontent.com/micro-editor/plugin-channel/master/channel.json
```

## ⌨️ Raccourcis clavier

### Fichiers

- `Ctrl+O` / `Alt+O` : Ouvrir un fichier
- `Ctrl+S` / `Alt+S` / `F2` : Sauvegarder
- `Ctrl+W` / `Alt+X` : Fermer l'onglet
- `Ctrl+Q` / `Alt+Q` : Quitter
- `Alt+N` : Nouveau fichier
- `Alt+P` : Palette de commandes

### Édition

- `Ctrl+Z` : Annuler
- `Ctrl+Y` : Rétablir
- `Ctrl+A` : Tout sélectionner
- `Ctrl+C` : Copier
- `Ctrl+V` : Coller
- `Ctrl+X` : Couper
- `Alt+/` : Commenter/Décommenter
- `Alt+R` : Réindenter
- `Alt+W` : Basculer le retour à la ligne souple
- `Alt+B` : Basculer la règle

### Recherche

- `Ctrl+F` / `Alt+F` : Rechercher
- `Alt+G` / `F3` : Rechercher suivant
- `Alt+Shift+G` / `F4` : Rechercher précédent

### Navigation

- `Ctrl+←/→` : Mot précédent/suivant
- `Ctrl+Home/End` : Début/Fin du texte
- `Ctrl+Shift+←/→` : Sélectionner mot précédent/suivant
- `Ctrl+Shift+Home/End` : Sélectionner jusqu'au début/fin

### Onglets

- `Alt+1` à `Alt+9` : Aller à l'onglet 1-9
- `Alt+0` : Aller à l'onglet 10

### Fonctions

- `F1` : Aide
- `F5` : Exécuter
- `F6` : Basculer l'aide
- `F7` : Basculer le journal
- `F8` : Basculer le menu des raccourcis

## 📝 Configuration par type de fichier

Des paramètres spécifiques sont définis pour différents types de fichiers :

### Par défaut
- Tab size: 2
- Tabstospaces: true

### Go
- Tab size: 4
- Tabstospaces: false (utilise les tabs)

### Python
- Tab size: 4
- Tabstospaces: true

### Makefile
- Tab size: 4
- Tabstospaces: false (utilise les tabs)

### YAML
- Tab size: 2
- Tabstospaces: true

### JSON
- Tab size: 2
- Tabstospaces: true

### Rust
- Tab size: 4
- Tabstospaces: true

## 🚀 Installation

1. **Installer Micro** :
   ```bash
   # macOS
   brew install micro
   
   # Linux (via snap)
   snap install micro
   
   # Ou depuis les sources
   curl https://getmic.ro | bash
   ```

2. **Copier la configuration** :
   ```bash
   cp -r micro/.config/micro/* ~/.config/micro/
   ```

3. **Redémarrer Micro** pour appliquer les changements

## 🎯 Personnalisation

### Changer de thème

Modifier `colorscheme` dans `settings.json` :
```json
{
  "colorscheme": "catppuccin-mocha"  // ou latte, frappe
}
```

### Ajuster la colonne de couleur

Modifier `colorcolumn` dans `settings.json` :
```json
{
  "colorcolumn": 80  // Colonne à mettre en évidence
}
```

### Modifier la taille des tabs

Pour un type de fichier spécifique :
```json
{
  "filetype": {
    "python": {
      "tabsize": 4,
      "tabstospaces": true
    }
  }
}
```

### Ajouter des raccourcis

Dans `bindings.json` :
```json
{
  "Ctrl-t": "NewTab",
  "Ctrl-Shift-t": "CloseTab"
}
```

### Installer des plugins

Depuis Micro, utilisez la palette de commandes (`Alt+P`) :
```
> plugin install nom-du-plugin
```

Ou directement dans `settings.json` :
```json
{
  "plugins": [
    "autoclose",
    "nouveau-plugin"
  ]
}
```

## 🔧 Dépannage

### Le thème ne s'applique pas

- Vérifier que le fichier de thème existe dans `colorschemes/`
- Vérifier l'orthographe dans `settings.json`
- Redémarrer Micro complètement

### Les plugins ne se chargent pas

- Vérifier la connexion internet pour le canal de plugins
- Vérifier que les plugins sont listés dans `settings.json`
- Consulter les logs avec `F7`

### Les raccourcis ne fonctionnent pas

- Vérifier les conflits avec les raccourcis système
- Consulter le menu des raccourcis avec `F8`
- Vérifier la syntaxe dans `bindings.json`

### Problèmes de presse-papiers

- Sur Linux, installer `xclip` ou `xsel` :
  ```bash
  sudo apt install xclip  # Debian/Ubuntu
  ```
- Sur macOS, le presse-papiers système devrait fonctionner nativement

## 📚 Syntaxe

Micro inclut des définitions de syntaxe pour plus de 100 langages de programmation, notamment :

- Langages populaires : Python, JavaScript, TypeScript, Rust, Go, C/C++, Java
- Langages web : HTML, CSS, JSON, YAML, XML
- Langages fonctionnels : Haskell, OCaml, Elixir, Clojure
- Langages systèmes : Bash, Fish, Zsh, Makefile
- Langages de configuration : Nix, TOML, INI, Dockerfile
- Et bien d'autres...

Les fichiers de syntaxe sont dans le répertoire `syntax/` et sont automatiquement détectés selon l'extension du fichier.

## 📝 Notes

- Configuration optimisée pour macOS et Linux
- Support complet des couleurs True Color
- Intégration Git pour afficher la branche dans la barre d'état
- Sauvegarde automatique désactivée (sauvegarde manuelle avec `Ctrl+S`)
- Sauvegarde de secours activée dans `~/.config/micro/backups`
- Plugins activés pour une expérience d'édition complète
- Raccourcis configurés pour une utilisation efficace

## 🔗 Ressources

- [Documentation officielle Micro](https://github.com/zyedidia/micro)
- [Guide des raccourcis](https://github.com/zyedidia/micro/blob/master/runtime/help/keybindings.md)
- [Liste des plugins](https://github.com/micro-editor/plugin-channel)
- [Thème Catppuccin](https://github.com/catppuccin/catppuccin)

---

**Dernière mise à jour**: 2026-02-16
