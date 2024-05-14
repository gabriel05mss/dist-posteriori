# simulação distibuição a posteriori

status do projeto : finalizado

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

$$
\rightarrow  \frac{\frac{[\tau^2(x - \theta)^2 + \sigma^2(\theta - \mu)^2]}{\sigma^2 + \tau^2}}{\frac{\sigma^2\tau^2}{(\sigma^2 + \tau^2)}}
$$

$$
f\(\theta | X) \propto  \frac{1}{\frac{\sigma^2\tau^2}{(\sigma^2 + \tau^2)\sqrt{2\pi}}\exp^-\frac{1}{2}\frac{(\theta - \mu)^2}{\tau^2}
$$



