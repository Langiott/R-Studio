#RAPPRESENTAZIONE GRAFICA IN R

hist(X$y, breaks=20) #un istogramma,cerchera di disegnare un istogramma con 20 barre
plot(x=X$y,y=X$z)    #un diagramma di dispersione. Tale diagramma verrà mosrato in una 
                      periferica.In R posso utilizzare solo una periferica e se produco 
                      due grafici il primo viene cancellato per dar spazio al secondo. 
                      per ovviare al problema devo aprire una nuova periferica windows()
                      in mdo da crere periferiche passive e attive (lavoro con queste)
img<-replayPlot      #quando creo un grafico e lo voglio salvare uso tale comando
replayPlot(img)      #visualizza immagine precedenteente salvata 
File|Save            #se vogli salvare il grafico in un file esterno eseguo tali comandi

postscript(file="c:/documenti/file.eps")  #crea il file, dove salvo il grafico in questo 
                                          caso complesso quindi richiede molta memoria
plot(..)                                  #disegna ci`o che vuoi
dev.off()                                 #chiudi

pdf() o jpeg()                            #funzione dii periferica simile a postsript(), per 
                                           seguire esempio sopra 

width e height                            #modificano aspetto e dimensioni dei caratteri di un 
                                           grafici 

pictex()                                  #una particolare periferica che non produce una
                                           immagine ma un file di testo con i codici che
                                           possono essere inseriti in un file LATEX

par(mfrow=c(l,k))                         #divide il grafico in l-righe e k-colonne 

#PARAMETRI GRAFICI 

xlab,ylab   #accettano singoli caratteri per nominare l’asse delle ascisse
             e quello delle ordinate
xlim,ylim   #limiti dei due assi 

type        #definisc ecome disegnare i valori nel grafico 
            #type(p) grafico per punti
            #type(l) grafico per linee
            #type(s) grafico a gradino 

lty1,lty2   #definiscono il tipo di linea da disegnare, la prima continua la seconda
             tratteggiata 
pch         #per definire il tipo di punto o simbolo da disegnare;

col         #per specificare i colori dei punti e/o linee da disegnare
main        #un carattere per aggiungere il titolo al grafico


#PLOT DI UN VETTORE NUMERICO

x<-rnorm(50)
plot(x)

#PLOT DI UN VETTORE NUMERICO RISPETTO AD UN ALTRO

temperatura<-temperatura_attuale
pressure <- pressure_attuale
plot(temperature, pressure, xlab="Temperatura", ylab="Pressione", type="b")


#PLOT DI UNA FUNZIONE
es1:
plot(sin, 0, 2*pi, type="l", col=“darkgreen", main="Funzione seno")


#PLOT DI UN DATABASE
plot(andre_database)

#ISTOGRAMMA DELLE SIDTRIBUZIONI DELLE MEDIE: n=32

hist( mns[, 3], main="", ylab = "Frequenza", xlab =
+ "Campioni di dim.32", las = 1, col = "darkred", freq=FALSE)

lines(density( mns[, 3]), col = "blue")

#FUNZIONI PER LA GRAFICA 3D
-image()  #visualizza grafici 3d, utilizza diversi toni per le altezze 
-persp()  #permette di visualizzare superfici wireframe 
-contour  #rappresenta una superficie 3D tramite curve di livello

image:esempio

#f(x,y)= sin(x)+cos(y)
>x<-y<-seq(0,2*pi,by=0.05)
>z <- outer(sin(x),cos(y),"+") 
>   image(x,y,z)


persp: esempio
#f(x,y)=sin(3x)+cos(3y)
> x<-y<-seq(0,2*pi,by=0.1)
> z <- outer(sin(3*x),cos(3*y),"+") # crea la matrice z delle altezze
> persp(x,y,z,phi=60,theta=45,d=10,col="pink",ticktype="detailed")

contour: esempio 
#f(x,y)=sin(3x)+cos(3y)
> x<-y<-seq(0,2*pi,by=0.1)
> z <- outer(sin(3*x),cos(3*y),"+") # crea la matrice z delle altezze
> contour(x,y,z)

#GRAFICI DINAMICI 

Esiste comunque il package R xgobi che permette di
accedere alle funzioni di grafica dinamica disponibili
nel sistema Xgobi di Swayne, Cook e Buja:
http://www.research.att.com/areas/stat/xgobi







