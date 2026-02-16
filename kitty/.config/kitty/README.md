# Configuration Kitty Terminal

Cette configuration pour Kitty Terminal utilise le thème Gruvbox et optimise l'expérience utilisateur sur macOS avec des fonctionnalités avancées et des raccourcis pratiques.

## 📁 Structure des fichiers

```
kitty/
├── kitty.conf              # Configuration principale
├── themes/
│   ├── gruvbox.conf        # Thème Gruvbox (actif)
│   ├── catppuccin-macchiato.conf
│   ├── dracula.conf
│   ├── nord.conf
│   └── ...
└── README.md               # Ce fichier
```

## 🎨 Thème

### Gruvbox Dark
Le thème Gruvbox est activé par défaut avec une palette de couleurs cohérente :
- **Fond** : `#282828` (gris foncé)
- **Texte** : `#ebdbb2` (crème clair)
- **Curseur** : `#928374` (gris moyen)
- **Transparence** : 0.9 (90% d'opacité)

## ⚙️ Configuration détaillée

### Fenêtre et affichage
- **Dimensions initiales** : 120x30 caractères
- **Espacement** : 10px de padding
- **Décorations** : Cachées pour un look minimaliste (`hide_window_decorations yes`)
- **Transparence** : 0.9 (90% d'opacité)
- **Mémorisation** : Position de fenêtre mémorisée, taille non mémorisée
- **Retour à la ligne** : Activé (`wrap_lines yes`)
- **Liens hypertexte** : Cibles affichées (`show_hyperlink_targets yes`)
- **Ouverture d'URL** : Utilise l'application par défaut

### Police
- **Famille** : JetBrainsMono Nerd Font
- **Taille** : 11.0pt (optimisée pour la lisibilité)
- **Ligatures** : Activées pour une meilleure typographie
- **Variations** : Auto pour gras/italique/bold-italic

### Curseur
- **Forme** : Bloc (`block`)
- **Couleur** : `#928374` (gris Gruvbox)
- **Clignotement** : Intervalle de 0.5s, arrêt après 1s
- **Trail** : Traînée activée (niveau 1)

### Onglets
- **Position** : En haut (`tab_bar_edge top`)
- **Style** : Powerline avec style incliné (`slanted`)
- **Template** : Affiche le titre et le nombre de fenêtres si > 1

### Comportement
- **Historique** : 10,000 lignes de scrollback
- **Indicateur scrollback** : Opacité 0 (invisible)
- **Défilement molette** : Minimum 1 ligne
- **Copie** : Automatique sur sélection (`copy_on_select yes`)
- **Copie propre** : Supprime les espaces en fin de ligne lors de la copie
- **Navigation** : Focus suit la souris (`focus_follows_mouse yes`)
- **Notifications** : Visuelles seulement (pas de son)
- **Cloche** : Activée sur changement d'onglet (`bell_on_tab yes`)
- **Contrôle distant** : Activé (`allow_remote_control yes`)
- **Fermeture** : Pas de confirmation (`confirm_os_window_close 0`)

## ⌨️ Raccourcis clavier

### Gestion des onglets
- `Ctrl+Tab` : Onglet suivant
- `Ctrl+Shift+Tab` : Onglet précédent
- `Ctrl+Shift+T` : Nouvel onglet
- `Ctrl+Shift+W` : Fermer l'onglet

### Split de fenêtre
- `Ctrl+Shift+D` : Split horizontal
- `Ctrl+Shift+E` : Split vertical
- `Ctrl+Shift+Flèches` : Navigation entre splits

### Navigation et scroll
- `Ctrl+Shift+Haut/Bas` : Ligne par ligne
- `Ctrl+Shift+Page Haut/Bas` : Page par page
- `Ctrl+Shift+Home/End` : Début/Fin du buffer

### Copier-coller
- `Ctrl+Shift+C` : Copier
- `Ctrl+Shift+V` : Coller

### Taille de police
- `Ctrl+Shift+Plus` : Augmenter la police (+2.0pt)
- `Ctrl+Shift+Moins` : Diminuer la police (-2.0pt)
- `Ctrl+Shift+0` : Réinitialiser la taille
- `Ctrl+Shift+KP_Add` : Augmenter (pavé numérique)
- `Ctrl+Shift+KP_Subtract` : Diminuer (pavé numérique)

### Autres
- `Ctrl+Shift+F11` : Plein écran
- `Ctrl+Shift+F2` : Éditer la configuration

## 🍎 Intégration macOS

### Optimisations spécifiques
- **Option comme Alt** : `macos_option_as_alt yes` (touche Option utilisable comme Alt)
- **Couleur barre de titre** : `macos_titlebar_color background` (suit le fond)
- **Quitter automatique** : `macos_quit_when_last_window_closed yes` (ferme avec la dernière fenêtre)
- **Pas de masquage** : `macos_hide_from_tasks no` (visible dans le switcher d'applications)

### Compatibilité
- Support des URLs cliquables
- Intégration shell activée
- Contrôle distant autorisé

## 🚀 Performance

### Structure de la configuration

Le fichier `kitty.conf` est organisé en sections numérotées et commentées :

1. **Thème** : Inclusion du thème Gruvbox
2. **Shell** : Configuration du shell (bash par défaut, zsh/fish commentés)
3. **Apparence - Fenêtre** : Dimensions, décorations, transparence, espacement
4. **Apparence - Police & Curseur** : Police, ligatures, curseur avec clignotement
5. **Apparence - Onglets** : Style Powerline avec template personnalisé
6. **Comportement - Scrollback & Copie** : Historique, copie automatique
7. **Comportement - Interface** : Souris, affichage, audio, contrôle distant
8. **Raccourcis - Onglets** : Navigation entre onglets
9. **Raccourcis - Fenêtres & Splits** : Splits et navigation
10. **Raccourcis - Scrolling & Zoom** : Défilement et zoom de police
11. **Raccourcis - Éditeur & Presse-papiers** : Copier-coller et édition config
12. **macOS** : Configuration spécifique macOS

## 🛠️ Personnalisation

### Changer de thème
1. Commentez la ligne actuelle dans `kitty.conf` :
   ```conf
   # include ~/.config/kitty/themes/gruvbox.conf
   ```
2. Ajoutez le nouveau thème :
   ```conf
   include ~/.config/kitty/themes/votre-theme.conf
   ```

### Ajuster la transparence
Modifiez dans la section "3. APPARENCE - FENÊTRE" :
```conf
background_opacity 0.95  # Plus opaque
background_opacity 0.8   # Plus transparent
background_opacity 0.9   # Actuel
```

### Modifier le curseur
Dans la section "4. APPARENCE - POLICE & CURSEUR" :
```conf
cursor_shape block        # block, beam, underline
cursor_blink_interval 0.5  # Intervalle de clignotement (secondes)
cursor_stop_blinking_after 1  # Arrêt après X secondes
cursor_trail 1           # Traînée (0-10)
```

### Personnaliser les onglets
Dans la section "5. APPARENCE - ONGLETS" :
```conf
tab_bar_style powerline  # powerline, fade, separator, hidden
tab_powerline_style slanted  # slanted, angled, round
tab_title_template {title}  # Template personnalisé
```

### Ajouter des raccourcis
Utilisez le format :
```conf
map vos+raccourcis votre_commande
```

## 📝 Installation

1. Installer Kitty :
   ```bash
   brew install --cask kitty
   ```

2. Copier la configuration :
   ```bash
   cp -r kitty/* ~/.config/kitty/
   ```

3. Redémarrer Kitty pour appliquer les changements

**Note** : La configuration est déjà dans `~/.config/kitty/`, pas besoin de créer de lien symbolique.

## 🔧 Dépannage

### Problèmes courants
- **Police non trouvée** : Installez JetBrainsMono Nerd Font
- **Thème ne s'applique pas** : Vérifiez le chemin du fichier de thème
- **Raccourcis ne fonctionnent pas** : Redémarrez Kitty

### Logs et debug
Activer le mode debug :
```bash
kitty --debug-config
```

## 📚 Ressources

- [Documentation Kitty](https://sw.kovidgoyal.net/kitty/)
- [Thèmes Kitty](https://github.com/kovidgoyal/kitty-themes)
- [Gruvbox Theme](https://github.com/morhetz/gruvbox)
- [Référence de configuration](https://sw.kovidgoyal.net/kitty/conf.html)

## 📝 Notes

- Configuration organisée en sections numérotées pour faciliter la maintenance
- Tous les paramètres sont commentés en français
- Compatible avec macOS, optimisé pour une utilisation quotidienne
- Support complet des Nerd Fonts pour les icônes
- Intégration shell activée pour une meilleure expérience

---

**Dernière mise à jour**: 2026-02-16

*Configuration maintenue pour une expérience terminal optimale sur macOS*
