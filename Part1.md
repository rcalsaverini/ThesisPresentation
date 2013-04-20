# Teoria de dependência estatística, Cópulas e teoria de informação
### Rafael S. Calsaverini



---
= data-x="1000" data-scale="2"


## Dependência estatística
* Independência estatística: $P(x,y) = P(x)P(y)$, ou: $$P(x|y) = P(x)$$
* Dependência completa:
    $$P(x|y) = \delta(x - F(y))$$
* Quanto mais posso saber sobre $X$ conhecendo $Y$? $P(X|Y)$

---

## Correlação

* Módulo usualmente empregado como medida de dependência estatística.
    $$|\mathrm{Corr}(X,Y)| = \left| \frac{E[XY] - E[X]E[Y]}{\sigma[X]\sigma[Y]}\right|$$
* Correlação é problemática:
    * $\mathrm{Corr}(X,Y) \ne \mathrm{Corr}(f(X), g(Y)) $, em geral;
    * $\mathrm{Corr}(X,Y) = 0$ não implica que $X$ e $Y$ sejam independentes;
    * $\mathrm{Corr}(X,Y) = 1$ não implica que $X$ e $Y$ tenham dependência perfeita.

---
= data-x="1000" data-scale="2"
## Medidas de dependência

* Desideratos para uma boa medida de dependência <sup><a href="#frenyi" id="renyi">[1]</a></sup>:
    * $M[X,Y]$ é um funcional da distribuição conjunta;
    * $M[X,Y] = M[Y,X]$;
    * $M[X,Y] \Leftrightarrow$ $X$ e $Y$ independentes;
    * $M[X,Y]$ é máximo $\Leftrightarrow$ $P(X|Y) = \delta(X - f(Y))$;
    * $M[X,Y] = M[g(X), f(Y)]$  $\forall g, f$ monotônicas
    * Se $X,Y \thicksim \mathrm{StandardNormal}(\rho)$, então $M[X,Y] = f(\rho)$ 

* Exemplos: $\tau$ de Kendall, $\rho$ de Spearman.
    * $\small\tau = \mathrm{Prob}\left[(X - X')(Y-Y') > 0\right] - \mathrm{Prob}\left[(X - X')(Y-Y') < 0\right]$
    * $\small\rho = \mathrm{Corr}(\mathrm{rank}(X), \mathrm{rank}(Y))$

<div id="footnote">
    <p id="frenyi"><a href="#renyi">[1]</a> A. Renyi. On measures of dependence. <em>Acta. Math. Acad. Sci. Hungar.</em>, 10:441–451, 1959;
</div>


---
## Informação Mútua

* Definição
    1. "Distância" <a href="#fkl" id="kl">[2]</a> entre a distribuição conjunta e a variedade de distribuições fatoráveis
    2. Valor esperado da divergência KL entre a distribuição de $X$ e $X | Y = y$
    3. Valor esperado da redução na entropia de $X$ ao se obter o valor de $Y$

    $$I(X,Y) = \int \mathrm{d}x\mathrm{d}y\; p(x,y) \log\frac{p(x,y)}{p(x)p(y)}$$

<div id="footnote">
    <p id="fkl"><a href="#kl">[2]</a> divergência de Kullback-Leibler:
    $$\int p(x)\log\frac{p(x)}{q(x)} \;\mathrm{d}x$$
</div>

---
= data-x="1000" data-scale="2"

<div id="theorem">
<h2>Cópulas - Teorema de Sklar</h2>
Para toda distribuição cumulativa conjunta contínua de duas variáveis
$F_{X,Y}(x,y)$, com distribuições cumulativas $F_X(x)$ e $F_Y(y)$, existe 
uma função cópula única $C(u, v)$ tal que:

$$F_{X,Y}(x,y) = C(F_X(x), F_Y(y))$$
</div>

* Exemplos
    * Arquimedianas: $C(u,v) = \psi^{-1}(\psi(u) + \psi(v))$
    * Normal: $\Phi_{\rho}(\phi^{-1}(u), \phi^{-1}(v))$
* Densidade de cópula: 
    * $c(u,v)=\frac{\partial^2 C}{\partial u\partial v}$
    * $p_{XY} = c(F{X}(x))$

