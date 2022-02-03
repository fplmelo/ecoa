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
```

```
## Carregando pacotes exigidos: permute
```

```
## Carregando pacotes exigidos: lattice
```

```
## This is vegan 2.5-7
```

```r
data (BCI)
BCI.env <- read.delim ('https://raw.githubusercontent.com/zdealveindy/anadat-r/master/data/bci.env.txt', row.names = 1)
BCI.soil <- read.delim ('https://raw.githubusercontent.com/zdealveindy/anadat-r/master/data/bci.soil.txt')
```

### Estação Biológica de Barro Colorado

<img src= https://www.davidzeleny.net/anadat-r/lib/exe/fetch.php/obrazky:bci_loc.jpg>

### Para uma descrição completa do local de estudo [clique aqui](https://www.davidzeleny.net/anadat-r/doku.php/en:data:bci)

<img src = https://www.davidzeleny.net/anadat-r/lib/exe/fetch.php/obrazky:barro_colorado_-_photo.jpg>
