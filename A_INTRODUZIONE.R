#OPERAZIONI SEMPLICI 

3+5

3*(34-4)/2

#COSTRUISCO OGGETTO 

x<- 3+8/33  #creo obj
x           #visualizzo obj
x=23        #scovrascrivo obj
2.5 -> x.1  #creo un altro obj
x/x.1       #operazioni tra obj

#oss:
Il simbolo = ha la stesa valenza di <-

#OPERAZIONI OGGETTO 
x<-3 #creo obj
x    #visualizzo obj
y    #vedo se in memoria ho una variabile denominata 'y'


#PAROLE CHIAVI 

TRUE FALSE     #si assegna valore ad un obj 
Inf Na NaN     #quando risolvo delle disequazioni il risultao del vettore puo essere 
Break          #interrompi riga di codice 
if else        #ciclo con condizioni 
while, for     #due differenti cicli 
function       #funzione 
next           #a differenza di break che stoppa il ciclo , next salta riga di codice 
repeat         #Un ciclo di ripetizione viene utilizzato per scorrere 
                un blocco di codice più volte.
                Non vi è alcun controllo delle condizioni nel 
                ciclo di ripetizione per uscire dal ciclo.
                Dobbiamo noi stessi inserire una condizione 
                esplicitamente all'interno del corpo del ciclo e 
                utilizzare l' istruzione break per uscire dal ciclo.
                In caso contrario, risulterà in un ciclo infinito.

#OPERAZIONI ARITMETICHE E TIPI DI DATO 
==
</>
<= >=
!= 

.3       #floating type

#VARIABILI 
 
x <- c(1,2,3)                                               #creo vettore 
m <- matrix (data x ,nrow=1, ncol=3)                        #creo matrice
lista <- list(primo = c(1, 2, 3), secondo = c(1.2, 5.6))    #creo lista di vettori 
x <- scan(what = "character")                               #tipo di vettore a lista
x <- array(data = 1:8, dim = c(2, 2), dimnames = etichette) #creo array
complex()
names(x)<-("primo","secondo","terzo")                       #rinomina elementi di un vettore
leght(x)                                                    #dimensione

#OPERATORI LOGICI 
&         #AND logico , termina quando a controllato tutte le combinazioni
&&        #AND logico , termina alla prima condizione verificata 
|         #OR logico
||        #OR logico
xor()     #XOR logico
!         #NOT


#DATA FRAME: Un data frame è una lista di vettori

nome    <- c("Andrea","Gennaro ")
anno    <- c(1998,1950)
livello <- c("principiante","esperto")
tabella <- data.frame(nome,anno,livello)           #dataframe
dim(tabella)                                       #dimensione dataframe
tabella[tabella$livello == "principiante","nome"]  #seleziona i valori di 
                                                    livello e se sono uguali a 
                                                    "principiante" allora stampa il nome"



