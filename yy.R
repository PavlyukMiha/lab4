f <- function(){
  e1 <- new.env(parent = baseenv())
  assign("x", c(read.table("1.txt", sep = ",", header = FALSE)), envir = e1)
  
  e2 <- new.env(parent = baseenv())
  assign("x", c(read.table("2.txt", sep = ",", header = FALSE)), envir = e2)

  e3 <- new.env(parent = baseenv())
  assign("x", c(read.table("3.txt", sep = ",", header = FALSE)), envir = e3)

  e4 <- new.env(parent = baseenv())
  assign("x", c(read.table("4.txt", sep = ",", header = FALSE)), envir = e4)

  e5 <- new.env(parent = baseenv())
  assign("x", c(read.table("5.txt", sep = ",", header = FALSE)), envir = e5)

  
  boxplot(c(0:100))
  for (i in c(get("x", envir = e1),
              get("x", envir = e2),
              get("x", envir = e3),
              get("x", envir = e4),
              get("x", envir = e5))) boxplot(i, 0.1, add = T)
  
  w<-data.frame(get("x", envir = e1),
                get("x", envir = e2),
                get("x", envir = e3),
                get("x", envir = e4),
                get("x", envir = e5))
  w
  
}

f()
