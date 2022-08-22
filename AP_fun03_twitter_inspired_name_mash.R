## 22-08-08 AP
## Tweet. @pmddomingos "The ideal tech company would have Apple's design flair, Google's AI and Amazon's operations.
## what would this company be called?
apple <- c("ap","ple")
google <- c("goo","gle")
amazon <- c("am","a","zon")

## how many syllables? Should be 2-3 since Apple and Google are 2 and Amazon is 3. But each should be sampled equally. 
# name.me <- function(syllables) {
#   x <- sample(apple, size=ceiling(syllables/3))
#   y <- sample(google, size=ceiling(syllables/3))
#   z <- sample(amazon, size=ceiling(syllables/3))
#   i <- c(x,y,z)
#   p <- paste(sample(i, size=syllables), collapse="")
#   return(p)
# }

## but what if you want MANY syllables? dropping equal sampling here
name.me <- function(syllables) {
  if (syllables <= 3) {
    x <- sample(apple, size=ceiling(syllables/3))
    y <- sample(google, size=ceiling(syllables/3))
    z <- sample(amazon, size=ceiling(syllables/3))
    i <- c(x,y,z)
    p <- paste(sample(i, size=syllables), collapse="")
    return(p)
  } else {
    x <- sample(apple, size=ceiling(syllables/3),replace=T)
    y <- sample(google, size=ceiling(syllables/3),replace=T)
    z <- sample(amazon, size=ceiling(syllables/3), replace=T)
    i <- c(x,y,z)
    p <- paste(sample(i, size=syllables), collapse="")
    return(p)
  }
}
