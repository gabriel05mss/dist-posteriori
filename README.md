# simulação distibuição a posteriori

ideia principal do projeto é perceber como a média e a variancia das distribuições a priori e a verrossimilhança influencia a posteriori.

proximas modificações:

opção de usar dados gerados para verificar como o tamanho de amostra influencia a distribuição a posteriori já que a combinação linear que descreve a media da distribuição depende de $\bar{x}$ .

status do projeto : em andamento...

Seja X | $\theta$ ~ N( $\theta$ , $\sigma^2$  ) $\rightarrow$ Verossimilhança,
$\theta$ ~ N( $\mu$ , $\tau^2$ ) $\rightarrow$ Priori,

Assumindo, $\sigma^2$ , $\mu$ , $\tau^2$ são conhecidos

$$
f\(X | \theta) = \frac{1}{\sigma^2\sqrt{2\pi}}\exp^-\frac{1}{2}\frac{(x - \theta)^2}{\sigma^2}
$$

$$
f\(\theta) = \frac{1}{\tau^2\sqrt{2\pi}}\exp^-\frac{1}{2}\frac{(\theta - \mu)^2}{\tau^2}
$$



A Posteriori $f\$( $\theta$ | X) :

$$
f\(\theta | X) \propto f\(X | \theta) f\(\theta)
$$

multiplicando os nucleos


$$
\exp[\frac{(x - \theta)^2}{\sigma^2} + \frac{(\theta - \mu)^2}{\tau^2}]
$$



$$
\rightarrow  \frac{\frac{\sigma^2 + \tau^2}{\sigma^2 + \tau^2} \times [\tau^2(x-\theta)^2 + \sigma^2(\theta + \mu)^2]}{\sigma^2\tau^2}
$$

Simplificação 

$$
\rightarrow  \frac{\frac{[\tau^2(x - \theta)^2 + \sigma^2(\theta - \mu)^2]}{\sigma^2 + \tau^2}}{\frac{\sigma^2\tau^2}{(\sigma^2 + \tau^2)}}
$$

Distribuição a posteriori

$$
f(\theta | X) \propto \frac{1}{\frac{\sigma^2\tau^2}{(\sigma^2 + \tau^2)}\sqrt{2\pi}}\exp - \frac{1}{2}[\frac{\frac{\tau^2(x - \theta)^2 + \sigma^2(\theta - \mu)^2}{\sigma^2 + \tau^2}}{\frac{\sigma^2\tau^2}{(\sigma^2 + \tau^2)}}]
$$

E[ $\theta$ | X] :

$$
\frac{\tau^2}{\sigma^2 + \tau^2}\bar{x} + \frac{\sigma^2}{\sigma^2 + \tau^2}\mu
$$

Var[ $\theta$ | X]:

$$
\frac{\sigma^2\tau^2}{(\sigma^2 + \tau^2)}
$$

email : gmoreira.silva2005@gmail.com

linkedin : www.linkedin.com/in/gabriel-moreira-73341a23b



