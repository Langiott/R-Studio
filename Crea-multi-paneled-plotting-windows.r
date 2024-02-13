'''
Il codice in R genera due immagini PNG (layout1.png e layout2.png) che mostrano differenti disposizioni di grafici sulla pagina. Ecco una descrizione dettagliata del codice:

Impostazione dei dati: Viene impostato un seme casuale (set.seed(5)) e sono generati due vettori x e y. Il vettore x è generato casualmente da una distribuzione normale, mentre il vettore y segue un modello quadratico con rumore.

Creazione della prima immagine (layout1.png):
Viene aperto un dispositivo di output PNG con la funzione png.
Il layout dei grafici è impostato su una griglia 2x2 utilizzando par(mfrow=c(2,2)).
Vengono impostati i margini del grafico corrente con par(mar=c(0.5, 4.5, 0.5, 0.5)).
Viene creato un boxplot orizzontale di x senza assi (boxplot(x, horizontal=TRUE, axes=FALSE)).
Viene disegnato un grafico vuoto (plot(0, type="n", xlab="", ylab="", axes=FALSE)).
Vengono impostati i margini del grafico corrente per il secondo grafico (par(mar=c(4.5, 4.5, 0.5, 0.5))).
Viene creato un grafico di dispersione di x e y.
Viene aggiunto del testo al grafico.
Vengono impostati i margini del grafico corrente per il terzo grafico (par(mar=c(4.5, 0.5, 0.5, 0.5))).
Viene creato un boxplot di y senza assi.
Viene chiuso il dispositivo di output con dev.off().
'''
'''
Creazione della seconda immagine (layout2.png):
Viene aperto un nuovo dispositivo di output PNG.
Viene definita una matrice di layout mat che specifica l'organizzazione dei grafici.
La funzione layout organizza i grafici in base alla matrice di layout definita.
Vengono ripetuti gli stessi passaggi per la creazione dei grafici come sopra, ma utilizzando il layout specificato.
'''












set.seed(5)
x <- rnorm(200)
y <- 25 - 22 * x + 5 * x^2 + rnorm(200)

png("layout1.png")
par(mfrow = c(2, 2))
par(mar = c(0.5, 4.5, 0.5, 0.5))
boxplot(x, horizontal = TRUE, axes = FALSE)
plot(0, type = "n", xlab = "", ylab = "", axes = FALSE)
par(mar = c(4.5, 4.5, 0.5, 0.5))
plot(x, y)
text(0.5, 85, "par(mfrow)", cex = 2)
par(mar = c(4.5, 0.5, 0.5, 0.5))
boxplot(y, axes = FALSE)
dev.off()

png("layout2.png")
mat <- matrix(c(1, 2, 0, 3), 2)
mat
layout(mat, c(3.5, 1), c(1, 3))
par(mar = c(0.5, 4.5, 0.5, 0.5))
boxplot(x, horizontal = TRUE, axes = FALSE)
par(mar = c(4.5, 4.5, 0.5, 0.5))
plot(x, y)
text(0.5, 85, "layout", cex = 2)
par(mar = c(4.5, 0.5, 0.5, 0.5))
boxplot(y, axes = FALSE)
dev.off()