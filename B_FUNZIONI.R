#FUNZIONI DI BASE 
#FUNZIONE INSIEMISTICHE 
#FUNZIONE INDICE
#FUNZIONE COMBINATORIE
#FUNZIONE TRIGONOMETRIA 
#FUNZIONE SUCCESSIONE 
#FUNZIONE ORDINAMENTO
#FUNZIONE NUMERI COMPLESSI 
#FUNZIONE CUMULAT 
#FUNZIONI DI ANALISI 

#FUNZIONI DI BASE
sum()
max(),min()
exp()
log2(),log10()
prod()
abs()
sign()    #valore assoluto
sqrt()
tronc()   #funz.troncamento valore da 2.4555 diventa semplicemnte 2
signif(x=pi ,digits=4) #tronca dopo la 4° cifre (3.141593---->3.1415)


#FUNZIONE INSIEMISTICHE
x<- c(1,12,29)
y<- c(0.5) 

union(x,y)                #unione
intersect(x,y)            #intersezione
setdiff()                 #differenza 
is.element(el= y,set = x) #cerca y=0.5 nell'insieme X (FALSE)
%in%                      #apparteneza x %i% y (FALSE)
setequal(x,y)             #vede se elem. di x sono ugaueli a elem. di y

#FUNZIONE INDICE
x <- c(1.2, 4.5, -1.3, 4.5)

which(x>2)           #cerco elementi di X che con fermano la condizione
which.min()          #trova il primo numero piu piccolo
which.max()          #molto diverso da max()

#FUNZIONE COMBINATORIE

n<-3 k<-2
choose(n,k)       #risolve il coefficiente binomiale 
factorial()

#FUNZIONE TRIGONOMETRIA 
sin()
cos()
tan()
asin()
sinh()
#FUNZIONE SUCCESSIONE 

1:10                              #produce obj da 1 a 10 
rep( x=c(1,2) , times =2)         #ripete elementi di X ,ogni elemento ripetuto di times=2 volte
rep.int()                         #ripete interi
sequence(nvec = c(2, 5))          #produce : 1 2 1 2 3 4 5 (1:2,1:5)
seq(from = 1, to = 3.4, by = 0.4) #from è punto partenza,to è il punto di arrivo , by è il passo 


#FUNZIONE ORDINAMENTO
x <- c(1.2, 2.3, 4.21, 0, 2.1, 3.4)

sort(x, decreasing = TRUE, index.return = FALSE)   #ordinamento decrescente 
sort(x, decreasing = FALSE, index.return = FALSE)  #ordinamwnto crescente


#FUNZIONE NUMERI COMPLESSI 

complex(modulus = Mod(1 + 3i), argument = Arg(1 + 3i))
Mod()
Arg()
Conj()
Im()
Re() 
#FUNZIONE CUMULATE

cumsum()    #sommatoria da i=1...n
cumprod()   #produtoria da i=1...n

#FUNZIONI DI ANALISI 


> f <- function(x) x * exp(-x^3) - (log(x))^2
> optimize(f, lower = 0.3, upper = 1.5, maximum = TRUE, tol = 1e-04)

optimize()   #mi ricerca il massimo/minimo rispetto una funzione obiettivo f(x)
uniroot()    #ricerca dello zero di funzione, argomenti simile a optimize()
polyroot()   #ricerca dei zeri in un polinomio p_k(x)=0
D(),DD()     #derivata prima e derivata seconda
integrate()  #integrae di f(x)dx nell intervallo [a,b]




