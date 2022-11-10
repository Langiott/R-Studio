#ORGANIZZAZIONE LAVORO 

options()                         #cambia impostazione della prompt
getwd()                           #questa è l’attuale dir di lavoro..
setwd("c:/varie")                 #cambiala..
mydata <- read.csv2("myfile.csv") #legge file csv e lo mette i mydata 

X<-read.table(file="c:/documenti/dati.txt",   #lettura file nella file path
+ header=TRUE,                                #nella prima linea del file contiene il nomi delle variabili                 
+ sep="\t",                                   #elementi separati da un tab
+ na.strings = "NA",                          #se ci sono elem mancanti li assegna Na
+ dec=".")                                    #specifica il tipo di carattere utilizzato nel file per separare i decimali, 
