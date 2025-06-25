let panier = [];
let total = 0;

function ajouterAuPanier(nom, prix) {
  panier.push({ nom, prix });
  total += prix;
  afficherPanier();
}

function afficherPanier() {
  const liste = document.getElementById('liste-panier');
  liste.innerHTML = '';
  panier.forEach(item => {
    const li = document.createElement('li');
    li.textContent = `${item.nom} - ${item.prix} DA`;
    liste.appendChild(li);
  });
  document.getElementById('total').textContent = total;
}
