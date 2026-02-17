<?php include 'includes/header.php'; ?>
<link rel="stylesheet" href="<?php echo $baseurl; ?>/assets/css/home.css">

<!-- Hero Banner -->
<section class="hero-banner">
    <div class="hero-overlay"></div>
    <div class="hero-content">
        <h1 class="hero-title">Bureau National de Gestion des Risques et des Catastrophes</h1>
        <p class="hero-description">Plateforme de gestion des besoins et distribution des dons aux populations sinistrées</p>
    </div>
</section>

<!-- Navigation Rapide -->
<section class="quick-nav">
    <h2 class="section-title">Navigation Rapide</h2>
    <div class="nav-grid">
        <a href="<?php echo $baseurl; ?>/besoins" class="nav-card">
            <div class="nav-icon">📋</div>
            <h3>Besoins</h3>
            <p>Gérer les demandes</p>
        </a>
        <a href="<?php echo $baseurl; ?>/dons" class="nav-card">
            <div class="nav-icon">🎁</div>
            <h3>Dons</h3>
            <p>Enregistrer les dons</p>
        </a>
        <a href="<?php echo $baseurl; ?>/simulation" class="nav-card">
            <div class="nav-icon">⚙️</div>
            <h3>Distribution</h3>
            <p>Simuler & distribuer</p>
        </a>
        <a href="<?php echo $baseurl; ?>/achats" class="nav-card">
            <div class="nav-icon">🛒</div>
            <h3>Achats</h3>
            <p>Utiliser l'argent</p>
        </a>
        <a href="<?php echo $baseurl; ?>/recap" class="nav-card">
            <div class="nav-icon">📊</div>
            <h3>Récapitulation</h3>
            <p>Vue d'ensemble</p>
        </a>
        <a href="<?php echo $baseurl; ?>/stats" class="nav-card">
            <div class="nav-icon">📈</div>
            <h3>Statistiques</h3>
            <p>Analyses par ville</p>
        </a>
    </div>
</section>

<!-- Qui Sommes-Nous -->
<section class="about-section">
    <h2 class="section-title">Qui Sommes-Nous ?</h2>
    <div class="about-content">
        <div class="about-text">
            <h3>Notre Mission</h3>
            <p>Le BNGRC est l'organisme national chargé de la prévention et de la gestion des risques et catastrophes à Madagascar. Nous coordonnons les interventions d'urgence et assurons une distribution équitable des ressources aux populations affectées.</p>
            <h3>Notre Engagement</h3>
            <p>À travers cette plateforme numérique, nous garantissons une gestion transparente et efficace des dons, permettant une réponse rapide et ciblée aux besoins des communautés sinistrées.</p>
            <h3>Nos Valeurs</h3>
            <ul>
                <li><strong>Transparence</strong> - Traçabilité complète des dons et distributions</li>
                <li><strong>Équité</strong> - Distribution proportionnelle selon les besoins réels</li>
                <li><strong>Efficacité</strong> - Optimisation des ressources et réponse rapide</li>
                <li><strong>Solidarité</strong> - Coordination entre toutes les parties prenantes</li>
            </ul>
        </div>
        <div class="about-images">
            <div class="img-stack img-1">
                <img src="<?php echo $baseurl; ?>/assets/img/img1.jpg" alt="Intervention BNGRC">
                <div class="img-caption">Intervention d'urgence</div>
            </div>
            <div class="img-stack img-2">
                <img src="<?php echo $baseurl; ?>/assets/img/img2.jpg" alt="Distribution de dons">
                <div class="img-caption">Distribution équitable</div>
            </div>
            <div class="img-stack img-3">
                <img src="<?php echo $baseurl; ?>/assets/img/img3.jpg" alt="Coordination BNGRC">
                <div class="img-caption">Coordination nationale</div>
            </div>
        </div>
    </div>
</section>

<?php include 'includes/footer.php'; ?>
