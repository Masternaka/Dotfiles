# Configuration Zed Editor

Configuration complète de **Zed**, un éditeur de texte moderne et performant avec support IA intégré.

## 📁 Structure

```
zed/
└── .config/
    └── zed/
        ├── settings.json          # Configuration principale de Zed
        ├── themes/                # Thèmes personnalisés
        │   ├── gruvbox.json
        │   ├── gruvbox-light.json
        │   ├── nordic.json
        │   └── nordic-light.json
        └── README.md             # Ce fichier
```

## ⚙️ Configuration principale (`settings.json`)

### Démarrage et restauration
- **Restauration au démarrage** : `launchpad` - Affiche l'écran de lancement au démarrage
- **Curseur** : Forme `bar` (barre verticale)

### Agent IA intégré
- **Profil par défaut** : `ask` - Demande confirmation avant utilisation
- **Modèle par défaut** : 
  - **Provider** : `anthropic`
  - **Modèle** : `claude-sonnet-4-5-latest`
- L'agent IA peut être utilisé pour l'autocomplétion, la génération de code, et l'assistance au développement

### Télémesure et confidentialité
- **Métriques** : Désactivées (`metrics: false`)
- **Diagnostics** : Désactivés (`diagnostics: false`)
- Aucune donnée n'est envoyée à des serveurs externes

### Raccourcis clavier
- **Base de raccourcis** : `VSCode` - Compatible avec les raccourcis de Visual Studio Code
- Facilite la transition depuis VSCode pour les utilisateurs familiers

### Polices
- **Taille UI** : 16px (`ui_font_size: 16`)
- **Taille de l'éditeur** : 16.0px (`buffer_font_size: 16.0`)
- Tailles optimisées pour une meilleure lisibilité

### Thèmes
- **Mode** : `dark` (mode sombre par défaut)
- **Thème clair** : `Gruvbox Light Hard`
- **Thème sombre** : `Gruvbox Dark`
- Les thèmes s'adaptent automatiquement selon le mode système (si configuré)

### Minimap
- **Affichage** : `always` - Toujours visible
- **Position** : `active_editor` - Uniquement dans l'éditeur actif
- **Pouce** : `always` - Toujours affiché
- **Bordure du pouce** : `left_open` - Bordure ouverte à gauche
- **Mise en évidence de la ligne courante** : `line` - Ligne entière mise en évidence
- **Largeur maximale** : 140 colonnes (`max_width_columns: 140`)

## 🎨 Thèmes personnalisés

La collection comprend des variantes personnalisées des thèmes populaires :

### Thèmes Gruvbox
- **`gruvbox.json`** - Version sombre standard (Gruvbox Dark)
  - Fond : `#282828`
  - Texte : `#ebdbb2`
  - Couleurs vives et contrastées pour réduire la fatigue oculaire

- **`gruvbox-light.json`** - Version claire standard (Gruvbox Light Hard)
  - Palette inversée pour une utilisation en mode clair
  - Optimisé pour les environnements lumineux

### Thèmes Nordic
- **`nordic.json`** - Version sombre standard
  - Palette de couleurs froides inspirée du design Nord
  - Couleurs apaisantes et professionnelles

- **`nordic-light.json`** - Version claire standard
  - Variante claire du thème Nordic
  - Idéal pour une utilisation prolongée

### Caractéristiques des thèmes
Tous les thèmes incluent :
- Coloration syntaxique complète
- Mise en évidence des conflits Git
- Indicateurs de création/suppression/modification de fichiers
- Styles pour les éléments de l'interface (boutons, menus, bordures)
- Support des lignes actives et guides d'indentation
- Couleurs pour les erreurs, avertissements et informations

## 📦 Installation et gestion

### 1. Installation de Zed

```bash
# macOS (avec Homebrew)
brew install --cask zed

# Linux (télécharger depuis https://zed.dev)
# Suivre les instructions sur le site officiel

# Windows (télécharger depuis https://zed.dev)
```

### 2. Installation de la configuration

Pour utiliser cette configuration dans Zed :

```bash
# Créer le répertoire de configuration si nécessaire
mkdir -p ~/.config/zed

# Créer le lien symbolique vers la configuration Zed
ln -sf ~/Desktop/Github/dotfiles/zed/.config/zed/settings.json ~/.config/zed/settings.json

# Créer le lien symbolique pour les thèmes
ln -sf ~/Desktop/Github/dotfiles/zed/.config/zed/themes ~/.config/zed/themes
```

### 3. Activation des thèmes

Les thèmes seront automatiquement disponibles dans Zed :
1. Ouvrir Zed
2. Ouvrir la palette de commandes (`Cmd+Shift+P` / `Ctrl+Shift+P`)
3. Taper "Change Theme"
4. Sélectionner le thème souhaité (Gruvbox Dark, Gruvbox Light Hard, etc.)

### 4. Modification des paramètres

Pour modifier la configuration :

1. Éditer le fichier `settings.json` directement dans ce dossier
2. Les changements seront automatiquement appliqués dans Zed (rechargement automatique)
3. Pour voir tous les paramètres par défaut de Zed, utiliser la commande palette : `zed: open default settings`

### 5. Configuration de l'agent IA

Pour utiliser l'agent IA avec Anthropic Claude :

1. Obtenir une clé API Anthropic depuis [console.anthropic.com](https://console.anthropic.com)
2. Dans Zed, ouvrir les paramètres (`Cmd+,` / `Ctrl+,`)
3. Aller dans la section "AI"
4. Ajouter votre clé API Anthropic
5. Sélectionner le modèle `claude-sonnet-4-5-latest` comme modèle par défaut

### 6. Synchronisation avec Git

Cette configuration est versionnée avec Git :

```bash
# Ajouter les changements
git add zed/

# Commiter les modifications
git commit -m "Update Zed configuration"

# Pousser les changements
git push
```

## 🔧 Personnalisation

### Modifier la taille des polices

Éditez `settings.json` :

```json
{
  "ui_font_size": 18,
  "buffer_font_size": 18.0
}
```

### Changer le thème par défaut

Modifiez la section `theme` dans `settings.json` :

```json
{
  "theme": {
    "mode": "dark",
    "light": "Nordic Light",
    "dark": "Nordic"
  }
}
```

### Personnaliser la minimap

Ajustez les paramètres de la minimap :

```json
{
  "minimap": {
    "show": "on_hover",  // "always", "on_hover", "never"
    "display_in": "all_editors",  // "active_editor", "all_editors"
    "thumb": "on_hover",  // "always", "on_hover", "never"
    "max_width_columns": 200
  }
}
```

### Ajouter un nouveau thème

Pour ajouter un nouveau thème :

1. Créer un fichier `.json` dans le dossier `themes/`
2. Suivre le format de thème Zed (voir fichiers existants comme référence)
3. Le thème sera automatiquement disponible dans Zed après redémarrage

Structure de base d'un thème :

```json
{
  "author": "Votre nom",
  "name": "Nom du thème",
  "themes": [
    {
      "appearance": "dark",
      "name": "Nom du thème",
      "style": {
        "background": "#282828",
        "editor.foreground": "#ebdbb2",
        // ... autres propriétés
      }
    }
  ]
}
```

## 💡 Recommandations

### Pour les développeurs
- **Taille de police** : Actuellement réglée à 16px pour une meilleure lisibilité
- **Thème** : Gruvbox pour réduire la fatigue oculaire lors de sessions prolongées
- **Raccourcis** : VSCode pour une transition facile depuis d'autres éditeurs
- **Minimap** : Toujours visible pour une navigation rapide dans les fichiers longs

### Pour l'IA Assistant
- **Modèle** : Claude Sonnet 4.5 pour un bon équilibre performance/coût
- **Profil** : `ask` pour solliciter explicitement l'IA et éviter les suggestions non désirées
- **Provider** : Anthropic pour des réponses de haute qualité

### Optimisation des performances
- La minimap est limitée à l'éditeur actif pour économiser les ressources
- La télémesure est désactivée pour améliorer les performances et la confidentialité
- Les polices sont optimisées pour le rendu rapide

## 📚 Ressources utiles

- [Documentation officielle de Zed](https://zed.dev/docs/configuring-zed)
- [Personnalisation des thèmes](https://zed.dev/docs/themes)
- [Configuration des raccourcis](https://zed.dev/docs/key-bindings)
- [Guide de l'agent IA](https://zed.dev/docs/ai)
- [API de configuration](https://zed.dev/docs/config-api)

## 🐛 Dépannage

### Problèmes courants

1. **Thèmes non reconnus** : 
   - Vérifiez que les fichiers JSON sont valides (syntaxe correcte)
   - Redémarrez Zed après avoir ajouté un nouveau thème
   - Vérifiez que les fichiers sont dans `~/.config/zed/themes/`

2. **Configuration non appliquée** : 
   - Redémarrez Zed après modification
   - Vérifiez la syntaxe JSON dans `settings.json`
   - Utilisez `zed: open default settings` pour voir les paramètres par défaut

3. **Liens symboliques cassés** : 
   - Recréez les liens avec les commandes d'installation ci-dessus
   - Vérifiez que les chemins sont corrects

4. **Agent IA ne fonctionne pas** : 
   - Vérifiez que vous avez une clé API Anthropic configurée
   - Assurez-vous que le modèle `claude-sonnet-4-5-latest` est disponible
   - Vérifiez votre connexion internet

5. **Minimap ne s'affiche pas** : 
   - Vérifiez que `show` est défini sur `"always"` dans les paramètres
   - Assurez-vous que vous êtes dans un éditeur actif (si `display_in: "active_editor"`)

### Réinitialisation

Pour réinitialiser complètement la configuration :

```bash
# Supprimer les liens symboliques
rm ~/.config/zed/settings.json
rm -rf ~/.config/zed/themes

# Redémarrer Zed pour utiliser la configuration par défaut
```

### Vérification de la configuration

Pour vérifier que votre configuration est correctement chargée :

1. Ouvrez Zed
2. Appuyez sur `Cmd+Shift+P` (macOS) ou `Ctrl+Shift+P` (Linux/Windows)
3. Tapez "Open Settings"
4. Vérifiez que vos paramètres personnalisés sont présents

---

*Mise à jour : Février 2026*
