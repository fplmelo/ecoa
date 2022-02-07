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

<script src="/rmarkdown-libs/fitvids/fitvids.min.js"></script>

<img src = https://aestheticmag.files.wordpress.com/2013/11/original.jpg>

<br>

``` r
xaringanExtra::embed_xaringan(url = "https://ecoaplic.org/en/slides_aulas/slides_eco_num/slides_desc_comm.html#1" )
```

<div class="shareagain" style="min-width:300px;margin:1em auto;">
<iframe src="https://ecoaplic.org/en/slides_aulas/slides_eco_num/slides_desc_comm.html#1" width="1600" height="900" style="border:2px solid currentColor;" loading="lazy" allowfullscreen></iframe>
<script>fitvids('.shareagain', {players: 'iframe'});</script>
</div>

## Os atributos de uma communidade biológica são simples, em princípio

1.  Entidades
2.  Identidades
3.  Quantidades

### Vamos examinar essa comunidade

``` r
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

-   São dados de uma série de plots 50 permanentes e contíguos de 1ha (50 ha no total) onde todas as árvores maiores que 10cm DAP (diametro à altura do peito) e uma grande quantidade de variáveis ambientais têm sido monitoradas há décadas.

## Vamos ver a estrutura dessa base dados

``` r
dim(BCI) # São 50 linhas (plots de 1 ha) e 225 colunas (espécies de árvores)
```

    ## [1]  50 225

## A primeira tarefa de um ecólogo é *namorar* os dados. Saber coisas básicas como:

1.  Quantas espécies em cada amostra?

``` r
specnumber(BCI) # Sim, existe uma função para isso no pacote "vegan"
```

    ##   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20 
    ##  93  84  90  94 101  85  82  88  90  94  87  84  93  98  93  93  93  89 109 100 
    ##  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40 
    ##  99  91  99  95 105  91  99  85  86  97  77  88  86  92  83  92  88  82  84  80 
    ##  41  42  43  44  45  46  47  48  49  50 
    ## 102  87  86  81  81  86 102  91  91  93

2.  Quantos indivíduos em cada amostra?

``` r
rowSums(BCI)
```

    ##   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20 
    ## 448 435 463 508 505 412 416 431 409 483 401 366 409 438 462 437 381 347 433 429 
    ##  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40 
    ## 408 418 340 392 442 407 417 387 364 475 421 459 436 447 601 430 435 447 424 489 
    ##  41  42  43  44  45  46  47  48  49  50 
    ## 402 414 407 409 444 430 425 415 427 432

3.  Qual a abundância de cada espécie?

``` r
head(colSums(BCI)) # mostra somente algumas linhas, mas se remover o head(), mostra a tabela inteira
```

    ##    Abarema.macradenia Vachellia.melanoceras Acalypha.diversifolia 
    ##                     1                     3                     2 
    ## Acalypha.macrostachya        Adelia.triloba  Aegiphila.panamensis 
    ##                     1                    92                    23

## Há funções específicas no pacote **“vegan”** que são muito úteis para nálises de comunidades biológica.

## 1 - Curvas de acumulação de espécies

### Base BCI

``` r
sp1<-specaccum(BCI, "random")
sp1
```

    ## Species Accumulation Curve
    ## Accumulation method: random, with 100 permutations
    ## Call: specaccum(comm = BCI, method = "random") 
    ## 
    ##                                                                             
    ## Sites     1.00000   2.00000   3.0000   4.00000   5.00000   6.00000   7.00000
    ## Richness 89.82000 122.30000 140.3600 151.47000 159.41000 165.85000 171.56000
    ## sd        6.47977   7.00433   6.0828   5.47806   5.57428   4.86873   4.84157
    ##                                                                               
    ## Sites      8.00000   9.00000  10.00000  11.00000  12.00000  13.00000  14.00000
    ## Richness 175.81000 179.70000 182.88000 185.74000 188.44000 190.82000 192.93000
    ## sd         4.69191   4.45516   4.23854   4.30555   4.09316   4.00853   4.39526
    ##                                                                            
    ## Sites     15.00000  16.00000  17.000  18.0000  19.00000  20.00000  21.00000
    ## Richness 195.02000 196.77000 198.330 199.7500 201.00000 202.22000 203.56000
    ## sd         4.43808   4.49659   4.586   4.5999   4.47214   4.34051   4.09316
    ##                                                                               
    ## Sites     22.00000  23.00000  24.00000  25.00000  26.00000  27.00000  28.00000
    ## Richness 204.64000 206.13000 207.34000 208.62000 209.56000 210.45000 211.27000
    ## sd         3.94538   3.75689   3.57946   3.35382   3.23903   3.32841   3.34197
    ##                                                                              
    ## Sites     29.00000  30.00000  31.0000  32.00000  33.00000  34.00000  35.00000
    ## Richness 212.20000 213.11000 214.1200 214.97000 215.75000 216.58000 217.22000
    ## sd         3.34845   3.28109   3.1791   3.03999   3.04967   2.96164   2.96981
    ##                                                                               
    ## Sites     36.00000  37.00000  38.00000  39.00000  40.00000  41.00000  42.00000
    ## Richness 217.91000 218.70000 219.26000 219.89000 220.51000 220.95000 221.59000
    ## sd         2.90626   2.54058   2.43136   2.30456   2.24056   2.21736   2.03055
    ##                                                                               
    ## Sites     43.00000  44.00000  45.00000  46.00000  47.00000  48.00000  49.00000
    ## Richness 221.96000 222.58000 222.97000 223.41000 223.85000 224.32000 224.66000
    ## sd         1.92758   1.64028   1.51394   1.29564   1.05768   0.75049   0.57243
    ##             
    ## Sites     50
    ## Richness 225
    ## sd         0

### Plot

``` r
plot(sp1, ci.type="poly", col="blue", lwd=2, ci.lty=0, ci.col="lightblue")
boxplot(sp1, col="yellow", add=TRUE, pch="+")
```

<img src="/en/courses/eco_num/descricao_comunidade/desc_comm_files/figure-html/unnamed-chunk-8-1.png" width="672" />

## Close
