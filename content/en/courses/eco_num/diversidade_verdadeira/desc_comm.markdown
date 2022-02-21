---
title: "Medidas de diversidade verdadeira"
author: "Felipe Melo"
date: "22 de fevereiro de 2022"
output: html_document
---

<script src="/rmarkdown-libs/fitvids/fitvids.min.js"></script>

<img src = https://www.researchgate.net/profile/Sabelo-Madonsela-2/publication/320402408/figure/tbl1/AS:668390758809603@1536368183123/Alpha-diversity-indices-used-in-the-study-and-their-equations.png>

<br>

<div class="shareagain" style="min-width:300px;margin:1em auto;">
<iframe src="https://ecoaplic.org/en/slides_aulas/slides_eco_num/slides_div_verdadeira.html#1" width="1600" height="900" style="border:2px solid currentColor;" loading="lazy" allowfullscreen></iframe>
<script>fitvids('.shareagain', {players: 'iframe'});</script>
</div>

# Desafios da mensuração da diversidade verdadeira

Números de Hill ou Série de Hill
Embora os índices de Shannon-Wiener e Gini-Simpson sejam amplamente usados em estudos ecológicos e de conservação, eles sofrem de propriedades matemáticas e não representam a diversidade propriamente dita (L. Jost 2006). Portanto, quando o objetivo é avaliar a diversidade, os índices de Shannon-Wiener e Gini-Simpson não deveriam ser utilizados na sua forma padrão, mas transformados em números efetivos de espécies ou diversidade verdadeira (L. Jost 2006). O número efetivo de espécies é o número de espécies igualmente abundantes (i.e. todas as espécies com a mesma abundância) necessárias para produzir o valor observado para um determinado índice. Por exemplo, uma comunidade com índice de Shannon-Wiener estimado de 4,5 teria um número efetivo de 90 espécies igualmente abundantes. Jost et al. (2006) usam o seguinte exemplo para explicar o conceito do número efetivo de espécies - uma comunidade com 16 espécies igualmente abundantes é duas vezes mais diversa do que uma comunidade com 8 espécies igualmente abundantes. Neste caso, a diversidade deveria ser proporcional ao número de espécies. Contudo, quando aplicamos os índices de diversidade para estas comunidades com 16 e 8 espécies (cada espécie com 5 indivíduos), o índice de Shannon-Wiener é 2,772 e 2,079, respectivamente, e o índice de Gini-Simpson é 0,937 e 0,875, respectivamente. Claramente, os valores estimados pelos índices de diversidade não representam a diferença entre as comunidades porque eles carecem de uma particularidade matemática conhecida como propriedade de duplicação.

O próximo exemplo (modificado do website de Lou Jost; http://www.loujost.com/), demostra a importância da transformação dos índices de diversidade em números efetivos de espécies. Imagine que você foi contratado para avaliar a diversidade de peixes em um riacho antes e depois da instalação de uma usina hidrelétrica. Suponha que os valores estimados pelo índice de Gini-Simpson foi de 0,99 antes da instalação e de 0,97 depois da instalação. A princípio, você poderia concluir que a diversidade diminuiu somente 2% e que a instalação da hidrelétrica não afetou a diversidade de peixes no riacho. Contudo, transformando os valores do índice de diversidade em números efetivos, percebemos que antes da instalação a diversidade do riacho equivale a 100 espécies igualmente abundantes, enquanto após a instalação, a diversidade equivale a 33 espécies igualmente abundantes. Portanto, a queda da diversidade foi de 66% e não 2%.

Hill (1973) derivou uma equação geral para o cálculo do número efetivo de espécies ou diversidade verdadeira que depende apenas do valor de q e da abundância relativa das espécies.

![](/en/courses/eco_num/diversidade_verdadeira/desc_comm_files/qorder.png)

Onde:

q = é um parâmetro conhecido como ordem da diversidade e é usado para dar peso às espécies comuns ou raras. q = 0 não considera a frequência das espécies e representa a riqueza observada de espécies, q = 1 equivale a transformação do índice de Shannon-Wiener (i.e. exp(H’)) e atribui pesos às espécies com base na proporção das suas frequências e, q = 2 equivale à transformação do índice de Gini-Simpson (i.e. 1/(1-D)) e atribui peso às espécies mais comuns. Valores de q \<1 favorecem espécies raras, enquanto valores de q \> 1 favorecem espécies comuns.

pi = abundância relativa de cada espécie, calculada pela proporção dos indivíduos de uma espécie pelo número total dos indivíduos na comunidade

Vamos calcular o Número de Hill para as comunidades do nosso exemplo.

Calculando o Número de Hill com q = 0.
