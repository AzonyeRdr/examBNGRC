# 🎨 BNGRC Design System - Humanitarian Operations Center

## Vue d'ensemble

Le système de gestion BNGRC a été transformé avec une identité visuelle **Humanitarian Operations Command Center** - un design professionnel, moderne et efficace qui inspire confiance et action.

## 🎯 Direction Esthétique

### Concept Principal
**Centre de Commandement Humanitaire** - Interface opérationnelle professionnelle avec des éléments high-tech subtils, inspirée des centres de contrôle de mission tout en restant accessible et humaine.

### Palette de Couleurs

```css
--color-navy-deep: #0a1628     /* Fond principal sombre */
--color-navy: #0f1f38           /* Surfaces principales */
--color-navy-light: #1a2f4d     /* Surfaces secondaires */
--color-cyan: #00d9ff           /* Accent principal - Actions */
--color-cyan-dark: #00a8cc      /* Hover cyan */
--color-orange: #ff6b35         /* Alerte/Important */
--color-chartreuse: #b7ff00     /* Succès/Validation */
--color-slate: #64748b          /* Texte secondaire */
--color-slate-light: #94a3b8    /* Texte principal */
```

### Typographie

- **Display (Titres)**: Outfit - Bold, impactant, moderne
- **Body (Texte)**: DM Sans - Lisible, professionnel, clean

## ✨ Caractéristiques Clés du Design

### 1. Navigation
- Barre de navigation sticky avec effet de scan
- Bordure lumineuse cyan animée
- Liens avec underline progressif au survol
- État actif avec inset shadow

### 2. Dashboard (Page d'accueil)
- Grid asymétrique de cards missions
- Effets de hover avec glow et échelle
- Animations de flottaison en background
- Couleurs d'accent différentes par carte

### 3. Tableaux de Données
- Headers avec gradient et bordure lumineuse
- Hover rows avec scale subtil
- Badges de statut avec pulse animation
- Séparation alternée pour lisibilité

### 4. Formulaires
- Inputs avec focus glow effect
- Selects personnalisés avec icône SVG
- Labels en uppercase avec espacement
- Validation visuelle claire

### 5. Boutons
- Système multi-niveau (primary, success, warning, danger)
- Effet shimmer au survol
- Shadow glow adaptatif
- Ripple effect au clic

### 6. Cards & Containers
- Background gradients subtils
- Bordures lumineuses colorées
- Effets de profondeur avec ombres
- Animations radiales au hover

## 🎬 Animations & Micro-interactions

Le fichier `animations.css` fournit:
- Loading states avec spinner
- Pulse pour éléments importants
- Slide in/out pour transitions
- Fade in staggered pour listes
- Glow effects
- Scan line (effet radar)
- Shake pour erreurs
- Skeleton loading
- Float pour éléments décoratifs

## 📱 Responsive

Le design s'adapte automatiquement:
- Navigation responsive (menu mobile à implémenter)
- Grid adaptatif pour les cards
- Tableaux avec scroll horizontal sur mobile
- Espacement proportionnel

## 🛠️ Utilisation

### Structure de base

```html
<div class="page-container">
    <div class="header">
        <h1>Titre de la Page</h1>
        <div>
            <a href="#" class="btn btn-success">Action</a>
        </div>
    </div>
    
    <!-- Contenu -->
</div>
```

### Cards avec animation

```html
<div class="card fade-in-stagger">
    <div class="card-icon">🎁</div>
    <h2>Titre</h2>
    <p>Description</p>
</div>
```

### Badges de statut

```html
<span class="badge badge-success">Validé</span>
<span class="badge badge-simulation">En simulation</span>
<span class="badge badge-warning">En attente</span>
```

### Progress bars

```html
<div class="progress-bar-container">
    <div class="progress-bar progress-complete" style="width: 85%">
        85%
    </div>
</div>
```

## 🎨 Personnalisation

### Modifier les couleurs

Éditer les variables CSS dans `main.css`:

```css
:root {
    --color-cyan: #00d9ff;  /* Votre couleur */
    /* ... autres variables ... */
}
```

### Ajouter des animations

Utiliser les classes utilitaires dans `animations.css`:

```html
<div class="fade-in-stagger">Contenu animé</div>
<button class="ripple">Bouton avec ripple</button>
<div class="glow-on-hover">Élément avec glow</div>
```

## 📋 Checklist de Qualité

- ✅ Toutes les pages utilisent le design system
- ✅ Navigation cohérente sur toutes les pages
- ✅ Feedback visuel sur toutes les interactions
- ✅ États de chargement pour opérations async
- ✅ Messages d'erreur/succès stylisés
- ✅ Tableaux responsives
- ✅ Formulaires avec validation visuelle
- ✅ Footer informatif et stylisé

## 🚀 Performance

- Utilisation de CSS natif (pas de framework lourd)
- Animations GPU-accelerated (transform, opacity)
- Lazy loading des images (si applicable)
- Variables CSS pour changements de thème rapides

## 🎯 Prochaines Étapes

1. Implémenter le menu mobile responsive
2. Ajouter des graphiques interactifs (Chart.js)
3. Dark/Light mode toggle
4. Animations de transition entre pages
5. Micro-interactions supplémentaires (tooltips, etc.)

---

**Design System Version**: 1.0  
**Dernière mise à jour**: Février 2026  
**Créé pour**: BNGRC - Bureau National de Gestion des Risques et des Catastrophes
