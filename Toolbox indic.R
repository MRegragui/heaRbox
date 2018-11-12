# Fonctions Toolbox Indicateurs


# Durées

Dates <- function(start,length){
  library(chron)
  seq.dates(start,by = "days", length)
  # forme de la date : MM/DD/YYYY
}


na.

# Niveaux moyens

sum_ac <- function(Niv){
  10.*log10(sum(10.^(Niv/10)))
}


mean_ac <- function(Niv){
  10.*log10(sum(10.^(Niv/10))/length(Niv))
}

#lden à rajouter



# Niveaux fractiles

l1 <- function(Niv){
  quantile(Niv,0.99)
}

l5 <- function(Niv){
  quantile(Niv,0.95)
}

l10 <- function(Niv){
  quantile(Niv,0.9)
}


l50 <- function(Niv){
  quantile(Niv,0.5)
}

l90 <- function(Niv){
  quantile(Niv,0.1)
}

l95 <- function(Niv){
  quantile(Niv,0.05)
}

lx <- function(Niv){
  data.frame(c("L_1","L_5","L_10","L_50","L_90","L_95"),c(l1(Niv),l5(Niv),l10(Niv),l50(Niv),l90(Niv),l95(Niv)))
}




