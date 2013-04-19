## Teoria de dependência estatística, Cópulas e teoria de informação
### Rafael S. Calsaverini
### rafael.calsaverini@gmail.com
### 26/04/2013
---
## Dependência estatística

* Independência estatística:
    $$P(x,y) = P(x)P(y)$$
    $$P(x|y) = P(x)$$
* Dependência completa:
    $$P(x|y) = \delta(x - F(y))$$
* Como representar dependência parcial?
* Correlação?
    $$\hat{\rho} = \frac{E[XY] - E[X]E[Y]}{\sigma[X]\sigma[Y]}$$

---

## Problemas com a correlação e medidas de dependência

* Correlação é problemática:
    * $\mathrm{Corr}(X,Y) \ne \mathrm{Corr}(f(X), g(Y)) $, em geral;
    * $\mathrm{Corr}(X,Y) = 0$ não implica que $X$ e $Y$ sejam independentes;
    * $\mathrm{Corr}(X,Y) = 1$ não implica que $X$ e $Y$ tenham dependência perfeita;
* **Desiderata** para um

