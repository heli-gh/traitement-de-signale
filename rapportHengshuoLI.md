

# Convolution et Corrélation

## partie 2

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
& =& \int_{-\infty}^{+\infty}{(Re_y(\tau)Re_y(\tau -t)+Im_y(\tau))Im_y(\tau-t) + j(Re_y(\tau-t)Im_y(\tau))-j(Re_y(\tau)Im_y(\tau-t))d\tau}\\
& =& R_{Re_y}(t)+R_{Im_y}(t) + jR_{Im_yRe_y}(t)-jR_{Re_yIm_y}(t)\\
 &=& (Re_y(\tau)*Re_y(-\tau))(t)+(Im_y(\tau)*Im_y(-\tau))(t) + j(Im_y(\tau)*Re_y(-\tau))(t)-jRe_y(\tau)*Im_y(-\tau)(t)
\end{eqnarray}
$$




$$
\begin{eqnarray}
y(\tau)*y(\tau)(t)&=&\int_{-\infty}^{+\infty}{y(\tau)y(t-\tau)d\tau}\\
&=&\int_{-\infty}^{+\infty}{(Re_y(\tau)+jIm_y(\tau))(Re_y(t-\tau)+jIm_y(t-\tau))d\tau}\\
& =& \int_{-\infty}^{+\infty}{(Re_y(\tau)Re_y(t-\tau)-Im_y(\tau))Im_y(t-\tau) + j(Re_y(t-\tau)Im_y(\tau))+j(Re_y(\tau)Im_y(t-\tau))d\tau}\\
&=& (Re_y(\tau)*Re_y(\tau))(t)-(Im_y(\tau)*Im_y(\tau))(t) + j(Im_y(\tau)*Re_y(\tau))(t)+jRe_y(\tau)*Im_y(\tau)(t)

\end{eqnarray}
$$



on suppose  $x(t)$ et $k(t)$ sont réel.

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


| $Re_y$  | $Im_y$  | $R_y =y(\tau)*y(\tau)(t) $ | $R_y =y(\tau)*y(\tau)(t)$ |
| ------- | ------- | -------------------------- | ------------------------- |
| paire   | paire   |                            |                           |
| paire   | impaire | $\checkmark$               |                           |
| impaire | paire   |                            | $\checkmark$              |
| impaire | impaire |                            |                           |

#### exemple:

### comparer $R_{yx}(t) et $$R_{xy}(t)$

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

donc $ R_{xy}(t)=R^*_{yx}(-t)$

#### exemple: