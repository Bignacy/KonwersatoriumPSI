# 6. Stwórz funkcję o nazwie przyznaj_nagrode()
# która symuluje rzut sześcienną kostką do gry i przyznaje nagrodę w zależności od wyniku rzutu. 
# Funkcja powinna działać według następujących zasad:
# - Jeśli wyrzucona liczba oczek to 6, funkcja powinna zwrócić komunikat: "Super bonus!"
# - Jeśli wyrzucona liczba oczek to 4 lub 5, funkcja powinna zwrócić komunikat: "Nagroda standardowa"
# - Jeśli wyrzucona liczba oczek to 1, 2 lub 3, funkcja powinna zwrócić komunikat: "Brak nagrody..."


przyznaj_nagrode = function() {
  x <- sample(6,1)
  #print(x)
  if (x == 6) {return("Super bonus!")}
  else if (x == 4 || x == 5) {return("Nagroda standardowa")}
  else {return("Brak nagrody...")}
}

przyznaj_nagrode()

# 7. Stwórz funkcję obliczającą podatek w zależności od dochodu. 
# Przyjmij następujące założenia:
# a) Jeżeli podatnik rozlicza się liniowo, wtedy niezależnie od kwoty płaci 19% podatku.
# b) Jeżeli podatnik rozlicza się na zasadach ogólnych, wtedy:
# - poniżej kwoty 85528zł płaci 18% podatku minus kwota zmniejszająca, czyli 556zł;
# - powyżej kwoty 85528zł płaci 14839zł + 32% nadwyżki powyżej 85528zł.


podatek = function(kwota, rodzaj) {
  if (rodzaj == "L") {wynik <- (0.19*kwota)}
  else if (rodzaj == "O") {
    if (kwota <= 85528 && kwota > 0) {wynik <- (0.18*kwota-556)}
    else if (kwota > 85528) {wynik <- (14839+0.32*(kwota-85528))}
    else {wynik <- "Blad"}
  }
  else (wynik <- "Blad")
  return(wynik)
}

podatek(85528,"O")
