#!/bin/bash

# Créer le dossier du projet
mkdir -p chiali-ecommerce/images
cd chiali-ecommerce

# === index.html ===
cat << 'EOF' > index.html
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Chiali - Huilerie et Conserverie</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <header>
    <img src="images/logo.png" alt="Chiali Logo" class="logo">
    <h1>Bienvenue chez Chiali</h1>
    <nav>
      <a href="#produits">Nos produits</a>
      <a href="#contact">Contact</a>
    </nav>
  </header>

  <main id="produits">
    <h2>Nos Produits</h2>
    <div class="produits">
      <div class="carte">
        <img src="images/huile_extra.jpg" alt="Huile d'olive vierge extra">
        <h3>Huile d'Olive Vierge Extra</h3>
        <p>Excellente qualité, 1ère pression à froid.</p>
        <button onclick="ajouterAuPanier('Huile d\'Olive', 1200)">Ajouter au panier</button>
      </div>
      <div class="carte">
        <img src="images/olives_entières.jpg" alt="Olives vertes entières">
        <h3>Olives Vertes Entières</h3>
        <p>Sans conservateurs – 550g</p>
        <button onclick="ajouterAuPanier('Olives Entières', 700)">Ajouter au panier</button>
      </div>
      <!-- Ajoute d'autres produits ici -->
    </div>
  </main>

  <footer id="contact">
    <p>© 2025 Chiali. Tous droits réservés.</p>
  </footer>

  <script src="script.js"></script>
</body>
</html>
EOF
chmod +x chiali-setup.sh


# === style.css ===
cat << 'EOF' > style.css
body {
  font-family: Arial, sans-serif;
  margin: 0;
  background: #f8f8f8;
}
header {
  background-color: #2e7d32;
  padding: 20px;
  color: white;
  text-align: center;
}
.logo {
  max-height: 60px;
}
nav a {
  margin: 0 10px;
  color: white;
  text-decoration: none;
}
.produits {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
  padding: 20px;
}
.carte {
  background: white;
  padding: 15px;
  border-radius: 8px;
  width: 250px;
  box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}
.carte img {
  max-width: 100%;
}
button {
  background: #2e7d32;
  color: white;
  border: none;
  padding: 10px;
  margin-top: 10px;
  cursor: pointer;
}
button:hover {
  background: #1b5e20;
}
EOF

# === script.js ===
cat << 'EOF' > script.js
let panier = [];
function ajouterAuPanier(produit, prix) {
  panier.push({ produit, prix });
  alert(produit + " ajouté au panier !");
  console.log("Panier:", panier);
}
EOF

# Message de copie d'image
echo -e "\n📸 Copiez maintenant vos images dans le dossier: chiali-ecommerce/images/"
echo "   (Exemples: logo.png, huile_extra.jpg, olives_entières.jpg)"
echo "Puis lancez : zip -r chiali-ecommerce.zip chiali-ecommerce"

# Optionnel : créer une archive si images déjà présentes
# zip -r ../chiali-ecommerce.zip .
