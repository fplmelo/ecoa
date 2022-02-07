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
library(xaringanExtra)
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

## Há funções específicas no pacote **"vegan"** que são muito úteis para nálises de comunidades biológica. 

## 1 - Curvas de acumulação de espécies {.tabset}

### Base BCI

```r
sp1<-specaccum(BCI, "random")
sp1
```

```
## Species Accumulation Curve
## Accumulation method: random, with 100 permutations
## Call: specaccum(comm = BCI, method = "random") 
## 
##                                                                             
## Sites     1.00000   2.0000   3.00000   4.00000   5.00000   6.00000   7.00000
## Richness 90.26000 121.6000 138.53000 150.28000 159.27000 165.97000 171.41000
## sd        7.61262   6.7868   7.09026   5.75612   6.33071   5.60745   5.17393
##                                                                               
## Sites      8.00000   9.00000  10.00000  11.00000  12.00000  13.00000  14.00000
## Richness 175.96000 179.55000 183.16000 186.23000 188.76000 190.84000 192.63000
## sd         5.10678   4.95102   4.89221   4.53239   4.36265   4.27754   4.28211
##                                                                               
## Sites     15.00000  16.00000  17.00000  18.00000  19.00000  20.00000  21.00000
## Richness 194.66000 196.53000 198.05000 199.74000 201.13000 202.58000 203.71000
## sd         4.12487   4.08361   4.11544   4.03174   4.22512   3.97766   3.84628
##                                                                              
## Sites     22.00000  23.00000  24.0000  25.00000  26.00000  27.00000  28.00000
## Richness 204.78000 205.83000 207.0200 208.13000 209.12000 210.06000 211.07000
## sd         3.89659   3.67919   3.5703   3.51521   3.57681   3.40178   3.34318
##                                                                               
## Sites     29.00000  30.00000  31.00000  32.00000  33.00000  34.00000  35.00000
## Richness 211.89000 212.71000 213.61000 214.52000 215.35000 215.97000 216.77000
## sd         3.19056   3.21705   3.01476   2.90064   2.76111   2.67217   2.55388
##                                                                               
## Sites     36.00000  37.00000  38.00000  39.00000  40.00000  41.00000  42.00000
## Richness 217.59000 218.27000 218.81000 219.39000 219.93000 220.48000 221.08000
## sd         2.24326   2.20126   2.14002   1.99947   1.91356   1.93574   1.79043
##                                                                               
## Sites     43.00000  44.00000  45.00000  46.00000  47.00000  48.00000  49.00000
## Richness 221.61000 222.10000 222.80000 223.24000 223.66000 224.04000 224.47000
## sd         1.73435   1.59861   1.46336   1.34179   1.13902   0.86363   0.68836
##             
## Sites     50
## Richness 225
## sd         0
```


### Plot

```r
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp1, col="yellow", add=TRUE, pch="+")
```

<img src="/en/courses/eco_num/descricao_comunidade/desc_comm_files/figure-html/unnamed-chunk-7-1.png" width="672" />

## Close
