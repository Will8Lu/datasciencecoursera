
setwd("D:/Data Scientist Certificate/RWorkDir/ProgAssignment3-data")

outcome<-read.csv("outcome-of-care-measures.csv",colClasses = "character")

head(outcome)

str(outcome)

object.size(outcome)

x<-as.numeric(outcome[,11])

hist(x)

st_unique<-unique(outcome[,7])

y<-match("BB",st_unique)

is.na(y)

oc_list<- c("heart attack","heart failure", "pneumonia")

y<-is.na(match("heat attack",oc_list))
y

## Function 1 Find the best hospital by States
best<- function(state,outcome) {
  
    ## read out come data
    setwd("D:/Data Scientist Certificate/RWorkDir/ProgAssignment3-data")
    outcome<-read.csv("outcome-of-care-measures.csv",colClasses = "character")
    ## Check that state and outcome are valid
    st_unique<-unique(outcome[,7])
    oc_list<- c("heart attack","heart failure", "pneumonia")
    ST_M <- is.na(match(state, st_unique))
    OC_M <- is.na(match(outcome, oc_list))
    
      if ST_M == TRUE {
        stop("invalid state")
      } else if OC_M == TRUE {
        stop("invalid outcome")
      } else
      
        
}


