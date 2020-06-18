d.value <- c("A", "A", "A", "A", 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2)
d.type <- c("A", "A", "A", "A", "K", "K", "K", "K", "Q", "Q", "Q", "Q", "J", "J", "J", "J", 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2)
test <- c(11, 11, 11, 11, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 8, 7, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 2)
df.cards <- data.frame(d.value, d.type)
function.test.value <- 18

#USER: Player k = 1 

blackjack <- function(n){
  n <- sample(test, 1)
  while(n <= 11){
  ifelse(n < 11, n <- n + sample(test, 1), n <- n)
  }
  while(n <= 14){
    ifelse(n <= 14, n <- n + sample(test, 1), n <- n)
  }
  while(n <= 15){
    ifelse(n <= 15, n <- n + sample(test, 1), n <- n)
  }
  ifelse(n >= 18, n <- n, n + sample(test, 1))
  ifelse(n > 20, stop("You bust!", call. = FALSE), n <- n)
}

blackjack()

#--------------------------------------------------------------------------------------------------------------------

#DEALER: Player k = 2



test.blackjack <- function(k){
  k <- sample(test, 1)
  ifelse(k < 11, k <- k + sample(test, 1) & ifelse(exists("A", k), "A" <- 11, k <- k), k <- k)
  ifelse(k <= 15, k <- k + sample(test, 1), k <- k)
  ifelse(k >= 17, k <- k & ifelse(exists("A", k), "A" <- 1, k <- k), k + sample(test, 1))
  ifelse(k > 20, stop("You bust!", call. = FALSE), k <- k)
}

test.blackjack()

Maggie [11:27 AM] 
hand <- function(){
  
  card1 <- sample(numCard,size = 1)
  numCard <<- numCard[-match(card1,numCard)]
  print(card1)
  
  card2 <- sample(numCard,size = 1)
  numCard <<- numCard[-match(card2,numCard)]
  print(card2)
  
  if(card1 == "A" && card2 == "A"){
    card1 <- 1
    card2 <- 11
  }else if(card1 == "A" && card2 != "A"){
    card1 = 11
  }else if(card1 != "A" && card2 == "A"){
    card2 = 11
  }
  Score <- as.numeric(card1) + as.numeric(card2)
  
  return(Score)
}

hand()
hand

blackjack2 <- function(){
  SetAmountofDecks <- function(deckAmount){
    if(is.numeric(deckAmount) == FALSE){
      stop("The deck amount needs to be an numerical entry!")
    }
    deckOfCards <- c('A','A','A','A','2','2','2','2','3','3','3','3','4','4','4','4','5','5','5','5','6','6','6','6',
                     '7','7','7','7','8','8','8','8','9','9','9','9','10','10','10','10','J','J','J','J',
                     'Q','Q','Q','Q','K','K','K','K')
    tDeckAmount <- rep(deckOfCards, deckAmount)
    return(tDeckAmount)
  }
  hand <- function(){
    
    card1 <- sample(numCard,size = 1)
    numCard <<- numCard[-match(card1,numCard)]
    print(card1)
    
    card2 <- sample(numCard,size = 1)
    numCard <<- numCard[-match(card2,numCard)]
    print(card2)
    
    if(card1 == "A" && card2 == "A"){
      card1 <- 1
      card2 <- 11
    }else if(card1 == "A" && card2 != "A"){
      card1 = 11
    }else if(card1 != "A" && card2 == "A"){
      card2 = 11
      ranchance <- sample(0:1, 1)
      if (ranchance == 1){
        shuffle <- df.deck[sample(1:nrow(df.deck)), ]
      }
    }
    Score <- as.numeric(card1) + as.numeric(card2)
    
    return(Score)
  }
  n <- sample(test, 1)
  while(n <= 11){
    ifelse(n < 11, n <- n + sample(test, 1), n <- n)
  }
  while(n <= 14){
    ifelse(n <= 14, n <- n + sample(test, 1), n <- n)
  }
  while(n <= 15){
    ifelse(n <= 15, n <- n + sample(test, 1), n <- n)
  }
  ifelse(n >= 18, n <- n, n + sample(test, 1))
  ifelse(n > 20, stop("You bust!", call. = FALSE), n <- n)
}
  
  
blackjack2()



