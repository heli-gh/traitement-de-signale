

#            Convolution et Corrélation des signales

##                                          ----Traitement du signale en matlab

​                                                                                                                Hengshuo LI , Ruidong PAN



[TOC]



## Introduction 

Le but de notre projet est d'étudier les produits de convolution et les corrélations entre plusieurs signaux.

Dans ce projet, nous allons tout d'abord prendre deux signaux généraux x(t)  et y(t) d'énergie finie, ensuite nous allons nous intéresser à un  signal x(t) réel et pair, et enfin nous étudierons un signal y(t)  complexe.

Pour que nous puisson mieux comprendre les  conculsions, nous utiliserons Matlab en prenant les signaux particuliers afin de vérifier nos résultats. 



## Partie 1 (signale réel pair)

### Preuve:

Si x(t) est pair alors: $x(t)=x(-t)$, si $x(t)$ est réel alors:$ x(t)=x^{*}(t)$

Calculer la corrélation :$ R_{x}(\tau)=\int_{-\infty}^{\infty}x(t)x(t-\tau)dt=\int_{-\infty}^{\infty}x(t)x(\tau-t)dt$

Calculer le produit de convolution:$x(t)*x(t)=\int_{-\infty}^{\infty}x(\tau)x(t-\tau)d\tau $ Donc nous pouvons conclure que si $\tau=t$, alors $R_{x}(\tau)=x(t)*x(t)$

Maintenant nous utilisons Matlab pour vérier notre résultat:

### Exemple: 

on prend un signale sinusoÏde $cos(wt) w=$ , cet fonction est bien vérifie la condition pair et réel, donc on peut dire que sa auto-corrélation et auto-convolution sont identiques par théoème. nous  le vérifions à l'aide de octave 

#### **code**:[simulation de x(t) ,sa auto-convolution et auto-corrélation ]()

**et nous obtetons la résultat suivant:**

![](https://i.loli.net/2021/02/26/qz9NUc8kx1fXdiZ.png)

nous s'apercevons la graph 2 et 3 sont similaire, donc on peut conclure sa auto-convolution et auto-corrélation sont identique.



## Partie 2 (signale complexe)

### comparer auto-corrélation et auto-convolution 

#### preuve:

$$
R_y(t)= \int_{-\infty}^{+\infty}{y(\tau)y^{*}(\tau -t)d\tau}\\
y(\tau)*y(\tau)(t)=\int_{-\infty}^{+\infty}{y(\tau)y(t-\tau)d\tau}
$$



$ y(t) $ est complex donc $y(t) = Re_{y}(t) + jIm_{y}(t)$
$$
\begin{eqnarray}
R_y(t)&=& \int_{-\infty}^{+\infty}{(Re_y(\tau)+jIm_y(\tau))(Re_y(\tau -t)-jIm_y(\tau-t))d\tau}\\
& =& \int_{-\infty}^{+\infty}{(Re_y(\tau)Re_y(\tau -t)+Im_y(\tau)Im_y(\tau-t) + jRe_y(\tau-t)Im_y(\tau)-j(Re_y(\tau)Im_y(\tau-t))d\tau}\\
& =& R_{Re_y}(t)+R_{Im_y}(t) + jR_{Im_yRe_y}(t)-jR_{Re_yIm_y}(t)\\
 &=& (Re_y(\tau)*Re_y(-\tau))(t)+(Im_y(\tau)*Im_y(-\tau))(t) + j(Im_y(\tau)*Re_y(-\tau))(t)-jRe_y(\tau)*Im_y(-\tau)(t)
\end{eqnarray}
$$




$$
\begin{eqnarray}
y(\tau)*y(\tau)(t)&=&\int_{-\infty}^{+\infty}{y(\tau)y(t-\tau)d\tau}\\
&=&\int_{-\infty}^{+\infty}{(Re_y(\tau)+jIm_y(\tau))(Re_y(t-\tau)+jIm_y(t-\tau))d\tau}\\
& =& \int_{-\infty}^{+\infty}{(Re_y(\tau)Re_y(t-\tau)-Im_y(\tau)Im_y(t-\tau) + jRe_y(t-\tau)Im_y(\tau)+jRe_y(\tau)Im_y(t-\tau)d\tau}\\
&=& (Re_y(\tau)*Re_y(\tau))(t)-(Im_y(\tau)*Im_y(\tau))(t) + j(Im_y(\tau)*Re_y(\tau))(t)+jRe_y(\tau)*Im_y(\tau)(t)

\end{eqnarray}
$$



on suppose  $x(t)$ et $ y(t)$ sont réel.

quand $x(t)$ est paire et réel, alors auto-convolution et auto-convolution de $x(t)$ sont identque; 

quand $x(t)$ est impaire et réel, alors auto-convolution et auto-convolution de $x(t)$ sont opposés;

quand $y(t)$ est paire et réel, alors cross-corrélation $R_{xy}(t) $  et convolution de $x(t)$ et $y(t) $ sont identique;

quand $y(t)$ est impaire et réel, alors cross-corrélation $R_{xy}(t) $  et convolution de $x(t)$ et $y(t) $ sont opposés;
$$
\begin{eqnarray}
R_x(t)&=&(x(\tau)*x(-\tau))(t)=(x(-\tau)*x(\tau))(t)=\int_{-\infty}^{+\infty}x(-\tau)x(t-\tau)d\tau\\
&&(x(\tau)*x(\tau))(t)=\int_{-\infty}^{+\infty}x(\tau)x(t-\tau)d\tau\\
R_{xy}(t) &=&  x(\tau)*y(-\tau)(t)=\int_{-\infty}^{+\infty}y(-\tau)x(t-\tau)d\tau \\
&&(x(\tau)*y(\tau))(t)=\int_{-\infty}^{+\infty}y(\tau)x(t-\tau)d\tau\\


\end{eqnarray}
$$
Donc, quand partie rélle de x(t) est paire et partie imaginaire de x(t) est impaire, alors $R_x(t)$= $y(\tau)*y(\tau)$(t) ;

quand partie rélle de x(t) est impaire et partie imaginaire de x(t) est paire, alors $R_x(t)$= $-y(\tau)*y(\tau)$(t) 



| $Re_y$  | $Im_y$  | $Re_{R_y} =Re_{y(\tau)*y(\tau)(t)} $ | $Re_{R_y} =-Re_{y(\tau)*y(\tau)(t)} $ |
| ------- | ------- | ------------------------------------ | ------------------------------------- |
| paire   | paire   |                                      |                                       |
| paire   | impaire | $\checkmark$                         |                                       |
| impaire | paire   |                                      | $\checkmark$                          |
| impaire | impaire |                                      |                                       |


| $Re_y$  | $Im_y$  | $Im_{R_y} =Im_{y(\tau)*y(\tau)(t)} $ | $Im_{R_y} =-Im_{y(\tau)*y(\tau)(t)} $ |
| ------- | ------- | ------------------------------------ | ------------------------------------- |
| paire   | paire   |                                      |                                       |
| paire   | impaire | $\checkmark$                         |                                       |
| impaire | paire   |                                      | $\checkmark$                          |
| impaire | impaire |                                      |                                       |


| $Re_y$  | $Im_y$  | $R_y =y(\tau)*y(\tau)(t) $ | $R_y =-y(\tau)*y(\tau)(t)$ |
| ------- | ------- | -------------------------- | -------------------------- |
| paire   | paire   |                            |                            |
| paire   | impaire | $\checkmark$               |                            |
| impaire | paire   |                            | $\checkmark$               |
| impaire | impaire |                            |                            |

nous prénons des quatre signales différentes pour vérifie ce résultat.

#### Exemple1:

on prends un signale très générale $f(t)=exp(jwt) \quad w=400\pi \quad t\in [-2\pi/w,2\pi/w]$ partie réelle de la fonction est paire et la partie imaginaire est impaire on obtient la graphie à l'aide de octave ci -desous:

![](https://i.loli.net/2021/02/26/GSN87UrOlVo9ABm.png)

**code**:[parite réelle cos et parite imaginaire sin]()

nous trouvons la résultat est bien vérifie, $R_y =y(\tau)*y(\tau)(t) $

#### Exemple2:

on choisie une signale dont partie imaginaire est pair et partie réelle est impaire. $f(t)=sin(wt)+jcos(wt)\quad w=400\pi \quad t\in [-8\pi/w,8\pi/w]$

nous le simulons dans octave, et graphe est ci-desous :

![](https://i.loli.net/2021/02/26/oVGdRAHurDB6Jmq.png) 

**code**:[parite réelle sin et parite imaginaire cos]()

ces graphes sont un peu difficile à observer, mais lorsque vous les comparez soigneusement , tu doit se rendre compte que la opposées de auto-covolution et auto-corrélation sont identique, qui vérifie la propostion on trouve.  

#### Exemple3:

Dans ce cas la, on veut prend d'autre fonction complex aléatoire mais bien vérifie la condition que la partie réelle est paire et parite imaginaire est imapire. par example : $f(t)= rect_{8\pi/w}(t)+jsin(wt)\quad w=400\pi\quad t\in[-8\pi/w,8\pi/w]$

**code**:[parite réelle rectrangle et parite imaginaire sin]()

la graphe est ci-desous:

![](https://i.loli.net/2021/02/26/PGYVH4l5BtMWxQd.png)

donc la preuve est vrais et on peut conclure $R_y =y(\tau)*y(\tau)(t)$ quad $RE_y paire \quad IM_y impare$

#### Exemple4:

quand même on construite un cas contôle avec Exemple3:

 $f(t)= sin(wt)+jrect_{8\pi/w}(t)\quad w=400\pi\quad t\in[-8\pi/w,8\pi/w]$

dont partie réelle est impaire et partie imaginaire est paire.

**code**:[partie réelle sin et partie imaginaire rectangle ]()

la graphe est ci-desous:

![](https://i.loli.net/2021/02/26/oTRjsqb7A2tSYwn.png)

donc la preuve est vrais et on peut conclure $R_y =-y(\tau)*y(\tau)(t)$ quad $IM_y paire \quad RE_y impare$



### Comparer $R_{yx}(t) et $$R_{xy}(t)$

#### preuve:


$$
\begin{eqnarray}
R_{xy}(t)&=& \int_{-\infty}^{+\infty}{(Re_x(\tau)+jIm_x(\tau))(Re_y(\tau -t)-jIm_y(\tau-t))d\tau}\\
& =& \int_{-\infty}^{+\infty}{(Re_x(\tau)Re_y(\tau -t)+Im_x(\tau))Im_y(\tau-t) + j(Re_y(\tau-t)Im_x(\tau))-j(Re_x(\tau)Im_y(\tau-t))d\tau}\\
& =& R_{Re_xRe_y}(t)+R_{Im_xIm_y}(t) + jR_{Im_xRe_y}(t)-jR_{Re_xIm_y}(t)\\
R_{yx}(t)&=& \int_{-\infty}^{+\infty}{(Re_y(\tau)+jIm_y(\tau))(Re_x(\tau -t)-jIm_x(\tau-t))d\tau}\\
& =& \int_{-\infty}^{+\infty}{(Re_y(\tau)Re_x(\tau -t)+Im_y(\tau))Im_x(\tau-t) + j(Re_x(\tau-t)Im_y(\tau))-j(Re_y(\tau)Im_x(\tau-t))d\tau}\\
& =& R_{Re_yRe_x}(t)+R_{Im_yIm_x}(t) + jR_{Im_yRe_x}(t)-jR_{Re_yIm_x}(t)\\


\end{eqnarray}
$$



si $x(t)$ et $y(t)$ sont réel , alors

$$
\begin{eqnarray}
R_{xy}(t) &= & (x(\tau)*y(-\tau))(t)=\int_{-\infty}^{+\infty}y(-\tau)x(t-\tau)d\tau \\
&& = \int_{-\infty}^{+\infty}y(-t-a)x(-a)da\quad (t-\tau=-a, \quad-\tau = -a -t) \\
&& = \int_{-\infty}^{+\infty}x(-\tau)y(-t-\tau)d\tau\\
R_{yx}(t) &=& (x(-\tau)*y(\tau)(t))=\int_{-\infty}^{+\infty}x(-\tau)y(t-\tau)d\tau \\
&& R_{xy}(t)=R_{yx}(-t)

\end{eqnarray}
$$

si x(t) est complex et y(t) est  complex,
$$
\begin{eqnarray}
R_{xy}(t) & =& R_{Re_xRe_y}(t)+R_{Im_xIm_y}(t) + jR_{Im_xRe_y}(t)-jR_{Re_xIm_y}(t) \\
R_{yx}(t) & =& R_{Re_yRe_x}(t)+R_{Im_yIm_x}(t) + jR_{Im_yRe_x}(t)-jR_{Re_yIm_x}(t) \\
          & =& R_{Re_xRe_y}(-t)+R_{Im_xIm_y}(-t) -(jR_{Im_xRe_y}(-t)-jR_{Re_xIm_y}(-t) ) \\
&& R_{xy}(t)=R^*_{yx}(-t)

\end{eqnarray}
$$

**donc $ R_{xy}(t)=R^*_{yx}(-t)$**

nous prenons 2 cas différentes pour vérifier ce résultat.

#### Exemple1:

nous prenons deux signales complex aléatoire,  comme  

pour $w=400\pi\quad t\in[-8\pi/w,8\pi/w]$

$f(t)=sin(wt)+cos(3wt)+j(cos(wt)+cos(2wt)+sin(4wt))\quad
g(t)=cos(2wt)+sin(3wt)+j(cos(wt)+sin(2wt)+sin(4wt))$

alors nous vérifions $ R_{fg}(t)=R^*_{gf}(-t)$

**code en matlab**:[corrélation conjugées 1]()

**image**:![](https://i.loli.net/2021/02/26/SHXRojOpsUlAJBy.png)

nous voyons que ce graphe montre $R_{fg}(t)$est bien équale $R_{gf}(-t)$ des signales complexes. 

#### Exemple2:

pour exlure les imprévus: nous prenons un cas différent:

pour $w=400\pi\quad t\in[-8\pi/w,8\pi/w]$

$f=sinc(wt)+cos(wt)+j(cos(4wt)+cos(3wt)+sin(4wt))\quad g=cos(2wt)+sin(4wt)+j(cos(wt)+sin(4wt)+sinc(wt))$

**code en matlab**[corrélation conjugées 2]()

**image**:![](https://i.loli.net/2021/02/26/O2bJgSkABHXd9Fq.png)

Sans doute,$ R_{xy}(t)=R^*_{yx}(-t)$

## Conclusion 

Dans cette projet, nous apprenons plein de choses, comment réaliser une projet en GIT, comment fait mieux de travaile en distance. je me profite de maîtriser la commande de matlab dans projet et mieux comprendre la corrélation et concolution des signales.  



## Annexe

> none.