# Configuration Niri

Ce dossier contient la configuration complète pour le gestionnaire de fenêtres Niri avec le thème Noctalia.

## Structure des fichiers

### Fichiers principaux

- **`config.kdl`** - Fichier de configuration principal qui inclut tous les autres fichiers de configuration
- **`noctalia.kdl`** - Configuration du schéma de couleurs Noctalia (thème vert/gris)

### Dossier `cfg/`

Le dossier `cfg/` contient tous les fichiers de configuration spécialisés :

#### 🎨 `animation.kdl`
Configure les animations du système :
- Changements d'espaces de travail (spring animation)
- Ouverture/fermeture des fenêtres (200ms, ease-out)
- Mouvements et redimensionnements (spring animations)
- Interface de capture d'écran et vue d'ensemble

#### 🚀 `autostart.kdl`
Applications lancées au démarrage :
- Agent d'authentification Polkit KDE
- Noctalia Shell (environnement de bureau)

#### 🖥️ `display.kdl`
Configuration des écrans :
- **DP-1** : Écran principal (1920x1080@60Hz, position 0,0)
  - Coins actifs : coin supérieur gauche
  - Couleur de fond : `#504945`
- **HDMI-A-2** : Écran secondaire (1920x1080@60Hz, position 1920,0)
  - Coins désactivés
  - Couleur de fond : `#504945`

#### ⌨️ `input.kdl`
Configuration des périphériques d'entrée :
- **Clavier** : Layout canadien avec variante "multix" pour les caractères accentués
- **Touchpad** : Tap-to-click et défilement naturel activés
- **Souris** : Focus suit la souris, warp-to-focus activé

#### 📐 `layout.kdl`
Paramètres d'agencement des fenêtres :
- Espacement entre fenêtres : 16px
- Colonnes centrées uniquement en cas de débordement
- Largeur par défaut des colonnes : 50%
- Largeurs prédéfinies : 33%, 50%, 67%
- Fond transparent (pour Noctalia Shell)

#### ⚙️ `misc.kdl`
Paramètres divers :
- Variables d'environnement Wayland
- Préférence pour les applications sans décoration client (CSD)
- Chemin des captures d'écran désactivé
- Vue d'ensemble zoomée à 25%
- Raccourcis clavier masqués au démarrage

#### 📋 `rules.kdl`
Règles spécifiques aux applications :
- **Rayon des coins** : 20px pour toutes les fenêtres
- **Firefox** : Workspace 1, maximisé au démarrage
- **Firefox PiP** : Flottant en bas à gauche
- **Discord** : Workspace 6
- **Obsidian** : Workspace 7, largeur 67%
- **Gnome Disk Utility** : Workspace 8, flottant, hauteur 50%
- **KeePassXC/Secrets** : Bloqué des captures d'écran

#### 🔢 `workspaces.kdl`
Configuration des espaces de travail :
- **Écran DP-1** : Workspaces 1-5
- **Écran HDMI-A-2** : Workspaces 6-10
- Section commentée avec des noms personnalisés (browser, code, terminal, etc.)

#### 📝 Fichiers additionnels (non inclus)
- `rules_name_workspaces.kdl` - Règles pour workspaces nommés
- `windows_switcher.kdl` - Configuration du switcher de fenêtres

## Thème Noctalia

Le thème utilise une palette de couleurs inspirée de Gruvbox :
- **Actif** : `#b8bb26` (vert)
- **Inactif** : `#282828` (gris foncé)
- **Urgent** : `#fb4934` (rouge)
- **Ombre** : `#28282870` (gris semi-transparent)

## Thème GTK3, GTK4 et QT

Pour gérer le thème des applications GTK3 et GTK4, il faut utiliser "nwg-look" et le thème "adw-gtk3". Si porblème avec certaines apps GTK4 et Flatpak, voir la page Wiki de Noctalia-shell pour la marche à suivre.

Pour gérer le thème des applications QT, il faut utiliser "qt6ct" et configurer une variable d'environnement, voir la page Wiki de Noctalia-shell pour la marche à suivre.

## Installation

1. Copier le dossier `.config/niri/` dans `~/.config/`
2. Redémarrer Niri ou recharger la configuration avec `niri msg reload-config`

## Personnalisation

Chaque fichier peut être modifié indépendamment pour adapter l'environnement à vos préférences. Les commentaires dans chaque fichier expliquent les options disponibles.

## Keybindings

Guide de référence complet de tous les raccourcis clavier dans le gestionnaire de fenêtres Niri.

**💡 Note :** `Mod` = touche `Super` (touche Windows)

---

## Contrôles Système

| Touche | Action |
|-----|--------|
| `Mod+Shift+ESCAPE` | Afficher la superposition des raccourcis |
| `Mod+ESCAPE` | Basculer l'inhibition des raccourcis |
| `CTRL+ALT+Delete` | Quitter Niri |
| `Mod+Shift+P` | Éteindre les moniteurs |

---

## Applications

| Touche | Action |
|-----|--------|
| `Mod+Return` | Ouvrir le terminal (Alacritty) |
| `Mod+Shift+Space` | Ouvrir le lanceur d'applications (Noctalia) |
| `Mod+B` | Ouvrir le navigateur (Firefox) |
| `Mod+ALT+L` | Verrouiller l'écran |
| `Mod+Shift+Q` | Menu de session |
| `Mod+Shift+Return` | Gestionnaire de fichiers (Nautilus) |
| `Mod+F11` | Terminal déroulant (Kitty) |

---

## Mouvement et Focus des Fenêtres

### Mouvement du Focus

| Touche | Action |
|-----|--------|
| `Mod+Left` / `Mod+H` | Focuser la colonne à gauche |
| `Mod+Right` / `Mod+L` | Focuser la colonne à droite |
| `Mod+Up` / `Mod+K` | Focuser la fenêtre au-dessus |
| `Mod+Down` / `Mod+J` | Focuser la fenêtre au-dessous |
| `Mod+Home` | Focuser la première colonne |
| `Mod+End` | Focuser la dernière colonne |

### Mouvement des Fenêtres

| Touche | Action |
|-----|--------|
| `Mod+CTRL+Left` / `Mod+CTRL+H` | Déplacer la colonne à gauche |
| `Mod+CTRL+Right` / `Mod+CTRL+L` | Déplacer la colonne à droite |
| `Mod+CTRL+Up` / `Mod+CTRL+K` | Déplacer la fenêtre vers le haut |
| `Mod+CTRL+Down` / `Mod+CTRL+J` | Déplacer la fenêtre vers le bas |
| `Mod+CTRL+Home` | Déplacer la colonne au début |
| `Mod+CTRL+End` | Déplacer la colonne à la fin |

### Navigation entre Moniteurs

| Touche | Action |
|-----|--------|
| `Mod+Shift+Left` / `Mod+Shift+H` | Focuser le moniteur à gauche |
| `Mod+Shift+Right` / `Mod+Shift+L` | Focuser le moniteur à droite |
| `Mod+Shift+Up` / `Mod+Shift+K` | Focuser le moniteur au-dessus |
| `Mod+Shift+Down` / `Mod+Shift+J` | Focuser le moniteur au-dessous |

### Déplacer entre Moniteurs

| Touche | Action |
|-----|--------|
| `Mod+Shift+CTRL+Left` / `Mod+Shift+CTRL+H` | Déplacer la colonne au moniteur à gauche |
| `Mod+Shift+CTRL+Right` / `Mod+Shift+CTRL+L` | Déplacer la colonne au moniteur à droite |
| `Mod+Shift+CTRL+Up` / `Mod+Shift+CTRL+K` | Déplacer la colonne au moniteur au-dessus |
| `Mod+Shift+CTRL+Down` / `Mod+Shift+CTRL+J` | Déplacer la colonne au moniteur au-dessous |

---

## Commutation d'Espaces de Travail

### Navigation à la Roulette Souris

| Touche | Action |
|-----|--------|
| `Mod+WheelScrollDown` | Focuser l'espace de travail en bas |
| `Mod+WheelScrollUp` | Focuser l'espace de travail en haut |
| `Mod+CTRL+WheelScrollDown` | Déplacer la colonne vers l'espace de travail en bas |
| `Mod+CTRL+WheelScrollUp` | Déplacer la colonne vers l'espace de travail en haut |
| `Mod+WheelScrollRight` | Focuser la colonne à droite |
| `Mod+WheelScrollLeft` | Focuser la colonne à gauche |
| `Mod+CTRL+WheelScrollRight` | Déplacer la colonne à droite |
| `Mod+CTRL+WheelScrollLeft` | Déplacer la colonne à gauche |

**Délai de 150ms** pour éviter le défilement excessif

### Espaces de Travail Numérotés

| Touche | Action |
|-----|--------|
| `Mod+1` à `Mod+10` | Focuser l'espace de travail 1-10 |
| `Mod+Shift+1` à `Mod+Shift+10` | Déplacer la colonne vers l'espace de travail 1-10 |
| `Mod+TAB` | Focuser l'espace de travail précédent |

---

## Contrôles de Disposition

| Touche | Action |
|-----|--------|
| `Mod+CTRL+F` | Étendre la colonne à la largeur disponible |
| `Mod+C` | Centrer la colonne |
| `Mod+CTRL+C` | Centrer les colonnes visibles |
| `Mod+Minus` | Réduire la largeur de la colonne (-10%) |
| `Mod+Equal` | Augmenter la largeur de la colonne (+10%) |
| `Mod+Shift+Minus` | Réduire la hauteur de la fenêtre (-10%) |
| `Mod+Shift+Equal` | Augmenter la hauteur de la fenêtre (+10%) |

---

## Modes de Fenêtre

| Touche | Action |
|-----|--------|
| `Mod+R` | Cycler dans les présets de largeur |
| `Mod+F` | Maximiser la colonne |
| `Mod+Shift+F` | Basculer le plein écran |
| `Mod+T` | Basculer le mode flottant |
| `Mod+W` | Basculer l'affichage en onglets |
| `Mod+O` | Basculer l'aperçu |

---

## Commutateur de Fenêtres

| Touche | Action |
|-----|--------|
| `Alt+Tab` | Fenêtre suivante |
| `Alt+Shift+Tab` | Fenêtre précédente |
| `Alt+grave` | Fenêtre suivante (même app) |
| `Alt+Shift+grave` | Fenêtre précédente (même app) |

---

## Captures d'Écran

| Touche | Action |
|-----|--------|
| `CTRL+Shift+1` | Capture d'écran (sélection) |
| `CTRL+Shift+2` | Capture d'écran (écran) |
| `CTRL+Shift+3` | Capture d'écran (fenêtre) |

---

## Gestion des Fenêtres

| Touche | Action |
|-----|--------|
| `Mod+Q` | Fermer la fenêtre |

---
