---
title: "Desenho de Experimentos"
author: "Felipe Melo"
date: "2 de fevereiro de 2022"
output: 
  html_document:
  toc: yes
  toc_float: true
  toc_depth: 2
---

<script src="/rmarkdown-libs/fitvids/fitvids.min.js"></script>

*Slides*

<div class="shareagain" style="min-width:300px;margin:1em auto;">
<iframe src="https://fplmelo.github.io/eco_numerica/slides/slide_experimento.html#1" width="1600" height="900" style="border:2px solid currentColor;" loading="lazy" allowfullscreen></iframe>
<script>fitvids('.shareagain', {players: 'iframe'});</script>
</div>

# Bibliografia básica

[Design and Analysis of Experiments with R](http://www.ru.ac.bd/stat/wp-content/uploads/sites/25/2019/03/502_07_00_Lawson_Design-and-Analysis-of-Experiments-with-R-2017.pdf)

# Noções básicas de Experimentos Ecológicos

Experimentos ecológicos não diferem de qualquer outro experimento científico. Esses têm uma lógica similar que precisa ser seguida e dominada para que análises de dados ecológicos possam ser planejadas e realizadas com sucesso.

## O que precisamos saber?

### - Definir um objetivo

-   Qual o objetivo do experimento? A resposta a essa pergunta é porque o experimento precisa ser realizado. Simples, mas desafiador. Tente você mesmo.

### - Definir a unidade amostral

-   Aqui é preciso definir qual a unidades mínima de variação do seu experimento. É o nível sobre o qual as medições serão feitas. É nesse nível que medimos variação (quando experimentos observacionais) our impomos variação (experimentos verdadeiros).

### - Definição de variáveis

-   Nesta fase precisamos saber quais serão as variáveis [**independentes e dependentes**](https://pt.wikipedia.org/wiki/Vari%C3%A1veis_dependentes_e_independentes). Ou seja, precisamos saber o que será medido como efeito e como resposta, respectivamente.

## Porque precisamos saber disso para ecologia numérica?

Ecologia numérica é uma discipina que atenta basicamente para análises que podem ser aplicadas tanto para poppulações como para comunidades, sendo essas últimas mais comuns. Portanto ée preciso saber o que vamos medir em comunidades biológicas para entender o que estamos fazendo.

Qual a unidade de análises onde mede diversidade alfa?

Qual a unidade de análises onde mede diversidade beta?

Qual a unidade de análises onde mede diversidade gamma?

## Há pelo menos três variáveis básicas a serem medidas em comunidades biológicas

-   Riqueza: Quantas “entidades” há numa comunidade

-   Abundância: Qual a quantidade de repreentantes de cada entidade na comunidade

-   Composição: Quais são as “entidades” que compõem uma comunidade biológica. Atenção! Essa faz mais sentido se comparamos a diferença entre duas comunidades.

Há outras características que podems ser medidas como biomassa, mas que devem ser aferidas em cada indivíduo da comunidade

## Veja esse exemplo

-   Quantas “entidades” há nas figuras da turma do Nemo?
-   Qual a quantidade em cada uma delas?

<img src=https://i.pinimg.com/originals/0b/42/aa/0b42aa0390ff7316e14f49c072acc1a8.jpg width= 400>

<img src=https://images.saymedia-content.com/.image/t_share/MTc0MjIzOTA0NzE2MzY3MzU2/tankgang.jpg width= 400>

-   Qual a diferença de composição entre as duas? Tente quantificar

## Exercício para entrega

### Fazer um pequeno site para agrupar todos os exercícios da disciplina

1.  Crie um pequeno site para agrupar seus exerćicios dessa disciplina utilizando o [seguinte tutorial sobre Rmarkdown](https://icaroagostino.github.io/post/rmd-cov19/), ou [esse aqui](https://jordaoalvesds.wordpress.com/2019/10/12/tutorial-relatorios-dinamicos-com-rmarkdown/)

2.  Agora, faça o exerćicio essa aula, que consistem em:

-   Imagine uma paisagem, invente uma counidade biológica e alguns gradientes ambientais para descrever essa paisagem e como a biodiversidade se distribui na mesma (escreva essa parte)
-   Crie uma comunidade fictícia no R
-   Faça descrições simples dessa comunidade, como: **riqueza e abundânica**
-   Tente demonstrar graficamente esses dados

3.  Publique no Rpubs através do próprio Rstudio. [Siga esse tutorial](https://www.youtube.com/watch?v=GJ36zamYVLg)
