thematrix<-matrix(1:9,nrow=3)
> thematrix
[,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9
> thematrix<-matrix(1:9,nrow=4)
Warning message:
  In matrix(1:9, nrow = 4) :
  data length [9] is not a sub-multiple or multiple of the number of rows [4]
> apply(thematrix,1,sum)
[1] 15  9 12 15
> thematrix<-matrix(1:9,nrow=3)
> apply(thematrix,1,sum)
[1] 12 15 18
> apply(thematrix,2,sum)
[1]  6 15 24
> thematrix[2,1]<-NA
> thematrix
[,1] [,2] [,3]
[1,]    1    4    7
[2,]   NA    5    8
[3,]    3    6    9
> apply(thematrix,1,sum)
[1] 12 NA 18
> thematrix[2,1]<-0
> apply(thematrix,1,sum)
[1] 12 13 18
> thematrix[2,1]<-na
Error: object 'na' not found
> thematrix[2,1]<-NA
> apply(thematrix,1,sum,na.rm=TRUE)
[1] 12 13 18
> 
  > thema
Error: object 'thema' not found
> thematrix[2,1]<-NULL
Error in thematrix[2, 1] <- NULL : 
  number of items to replace is not a multiple of replacement length
> apply(thematrix,1,sum,na.rm=TRUE)
[1] 12 13 18
> thelist<-list(A=thematrix(1:9,3),B=1:5,C=matrix(1:4,2),D=2)
Error in thematrix(1:9, 3) : could not find function "thematrix"
> thelist<-list(A=matrix(1:9,3),B=1:5,C=matrix(1:4,2),D=2)
> thelist
$A
[,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

$B
[1] 1 2 3 4 5

$C
[,1] [,2]
[1,]    1    3
[2,]    2    4

$D
[1] 2