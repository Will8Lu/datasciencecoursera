##Get working directory info
getwd()


##Read a csv file
#read.csv("mydata.csv")


#Write a function
myfunction <-function() {
        x <- rnorm(100)
        mean(x)
}

myfunction()

ls()

dir()

x<-1
print(x)

msg <- "hello"

hw<-c("Hello","World!")

hw

x<-c(TRUE,2)
x

x<-0:6

print(x)

##find x class
class(x)
## convert x from integer to numeric
as.numeric(x)
##to logical
as.logical(x)

as.complex(x)

x<-list(1,"a",TRUE,1+4i)
x

##Matrix
m<-matrix(nrow=2,ncol=3)
m
dim(m)
attributes(m)

##create value in matrix  -method 1
m<-matrix(1:6,nrow=2,ncol=3)
m

##create value in matrix  -method 2
m<-1:10
m
dim(m) <-c(2,5)
m

##create value in matrix  -method 3 
x<-1:3
y<-10:12
m<-cbind(x,y) ##column-binding
rbind(x,y) ##row-binding

## Factors
x<-factor(c("yes","yes","no","yes","no"))
x
table(x)
unclass(x)

x<-factor(c("yes","yes","no","yes","no"))
       levels=c("yes","no")
x

## Missing Value
x<-c(1,2,NA,4,5)
is.na(x)
x<-c(1,2,NA,NaN,5)
is.nan(x)
is.na(x)

## Data Frames
x<-data.frame(foo = 1:4, bar=c(T,T,F,F))
x

nrow(x)
ncol(x)

## Names for objects
x<-1:3
names(x)<-c("foo","bar","norf")
names(x)

x<-list(a=1,b=2,c=3)
x
m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m
