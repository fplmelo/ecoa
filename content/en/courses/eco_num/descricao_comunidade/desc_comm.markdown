---
title: "Descrição de comunidades biológicas"
author: "Felipe Melo"
date: "2 de fevereiro de 2022"
output: 
  html_document:
  toc: yes
  toc_float: true
  toc_depth: 2
---

<img src = https://aestheticmag.files.wordpress.com/2013/11/original.jpg>

<br>

## Os atributos de uma communidade biológica são simples, em princípio

1. Entidades
1. Identidades
1. Quantidades

### Vamos examinar essa comunidade


```r
library (vegan)
data (BCI)
BCI.env <- read.delim ('https://raw.githubusercontent.com/zdealveindy/anadat-r/master/data/bci.env.txt', row.names = 1)
BCI.soil <- read.delim ('https://raw.githubusercontent.com/zdealveindy/anadat-r/master/data/bci.soil.txt')
```

### Estação Biológica de Barro Colorado

<img src= https://www.davidzeleny.net/anadat-r/lib/exe/fetch.php/obrazky:bci_loc.jpg>

### Para uma descrição completa do local de estudo [clique aqui](https://www.davidzeleny.net/anadat-r/doku.php/en:data:bci)

<img src = https://www.davidzeleny.net/anadat-r/lib/exe/fetch.php/obrazky:barro_colorado_-_photo.jpg>

<br>

<img src=https://www.researchgate.net/profile/Eldredge-Bermingham/publication/7666672/figure/fig1/AS:277746631626753@1443231365395/The-50-ha-permanent-Forest-Dynamics-Plot-on-Barro-Colorado-Island-with-300-S-amara_W640.jpg>


- São dados de uma série de plots 50 permanentes e contíguos de 1ha (50 ha no total) onde todas as árvores maiores que 10cm DAP (diametro à altura do peito) e uma grande quantidade de variáveis ambientais têm sido monitoradas há décadas.

## Vamos ver a estrutura dessa base dados


```r
dim(BCI) # São 50 linhas (plots de 1 ha) e 225 colunas (espécies de árvores)
```

```
## [1]  50 225
```

## A primeira tarefa de um ecólogo é *namorar* os dados. Saber coisas básicas como:

1. Quantas espécies em cada amostra?

```r
specnumber(BCI) # Sim, existe uma função para isso no pacote "vegan"
```

```
##   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20 
##  93  84  90  94 101  85  82  88  90  94  87  84  93  98  93  93  93  89 109 100 
##  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40 
##  99  91  99  95 105  91  99  85  86  97  77  88  86  92  83  92  88  82  84  80 
##  41  42  43  44  45  46  47  48  49  50 
## 102  87  86  81  81  86 102  91  91  93
```

2. Quantos indivíduos em cada amostra?

```r
rowSums(BCI)
```

```
##   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20 
## 448 435 463 508 505 412 416 431 409 483 401 366 409 438 462 437 381 347 433 429 
##  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40 
## 408 418 340 392 442 407 417 387 364 475 421 459 436 447 601 430 435 447 424 489 
##  41  42  43  44  45  46  47  48  49  50 
## 402 414 407 409 444 430 425 415 427 432
```

3. Qual a abundância de cada espécie?

```r
head(colSums(BCI)) # mostra somente algumas linhas, mas se remover o head(), mostra a tabela inteira
```

```
##    Abarema.macradenia Vachellia.melanoceras Acalypha.diversifolia 
##                     1                     3                     2 
## Acalypha.macrostachya        Adelia.triloba  Aegiphila.panamensis 
##                     1                    92                    23
```

## Há funçõs espećificas 
