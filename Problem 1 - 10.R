#source Functions
setwd("~/R/ProjEuler/ProjEuler")
source("Functions.R")

#Problem 1
prob1 <- function(max){
  sum <- 0
  count <- 0
  while( count < 1000){
    sum <- sum + count
    count <- count + 3
  }
  count <- 0
  while(count < 1000){
    if(count %% 3 != 0){
      sum <- sum + count
    }
    count <- count + 5 
  }
  sum
}
prob1(1000)

#Problem 2


prob2 <- function(max){
  x <- fibboGenerator(max)
  count <- 0
  for(i in x){
    if(i%%2 == 0){
      count <- count + i
    }
  }
  count
}
prob2(4000000)


#Problem 3

prob3 <- function(max){
  #Naive implimentation (far from efficient ...)
  currentMax <- 0
  i <- 1
  bound <- max
  while (i <= bound){
    if(max%%i == 0 && isPrime(i)){
        currentMax <- i 
        bound <- bound/i 
    }
    i <- i+1
  }
  currentMax
}
prob3(600851475143)

prob4 <- function(numberOfDigits){
  currentBiggest <- 0
  for(i in 10^(numberOfDigits - 1): 10^(numberOfDigits)){
    for(j in i:10^(numberOfDigits)){
      if(i*j >= currentBiggest){
        if(isPalidromic(i*j)){
          currentBiggest <- i*j
        }
      }
    }   
  }
  return(currentBiggest)
}

prob4(3)

prob5 <- function(n){
  #lame problem cbf to implement anything (easy to do by hand ...)
  return(16*9*5*7*11*13*17*19)
}

prob6 <- function(n){
  sumOfSquares <-0
  sum <-0
  for(i in 1:n){
    sumOfSquares <- sumOfSquares + i^2
    sum <- sum + i
  }
  return(sumOfSquares - sum^2)
}

prob7 <- function(n) {
  allPrimes(nthPrimeUpperBound(n))[n]
}

prob9 <- function(){
  for(i in 1:1000){
    for(j in i:1000){
      if(floor(sqrt(i^2 + j^2)) ==sqrt(i^2 + j^2) && (i +j + sqrt(i^2 +j^2) == 1000))
        return(i*j*sqrt(i^2 +j^2))
    }
  }
}

prob10 <- function(n) {
  sum(allPrimes(n))
}