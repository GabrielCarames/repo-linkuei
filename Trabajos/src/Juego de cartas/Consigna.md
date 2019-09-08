# Escoba de 15
Laboratorio de Programación Orientada a Objetos

## Dominio
+ El mazo está compuesto por los **naipes (1 o As, 2, 3, 4, 5, 6 ,7, 10/Sota, 11/Caballo y 12/Rey)** de los cuatro **palos (copa, bastos, espadas y oros)**
+ Los valores de los naipes desde el 1/as al 7 coinciden con el numero indicado de la carta (1,2,3,4,5,6 y 7) y los del 10/Sota
al 12/Rey valen dos puntos menos que el valor indicando de la carta (8, 9 y 10)
+ Hay solo **2 jugadores.**
+ En cada turno de manera alternativa un jugador es **mano** (juega primero).
+ En cada turno se reparten **3 naipes** a cada **jugador** y se dejan** 4 naipes** descubiertos en la **mesa.**
+ Si los 4 naipes de la mesa suman 15 puntos se asigna la baza (naipes que un jugador recoge cuando gana en esta jugada) al que es mano. Esta situación de denomina **escoba de mano.**
+ Cada jugador, en su turno podrá hacer una jugada juntando una de las cartas que tenga en su poder y tantas como le convenga levantar de la mesa siempre con la condicion de que sumen **15 puntos.** Si lo hace las cartas "levantadas" se acumularán en su **montón.** Si no puede sumar 15 puntos con ninguna de las combinaciones estará obligado a bajar una carta que se sumará a las que están sobre la mesa.
+ Las jugadas donde se recojan todas las cartas de la mesa se denominan escoba y tendrán una puntuación especial.
Cuando se haya repartido todas las cartas del **mazo** se procederá a contabilizar los puntos obtenidos por cada jugador. Para lo cuál será ecesario cotejar las cartas que halla acumulado en su montón empleando el siguiente criterio:
* 1 punto para quien tenga **más cartas** (denominado **cartas**).
* 1 punto para quien tenga el **7 de oros** (denominado **7 de velo**).
* 1 punto para quien tenga **más cartas de oros** o 2 puntos en caso de tener **todas las cartas de oros** (denominado **oros**)
* 1 punto para el jugador que tenga más **cartas de valor 7**, si ambos tienen la misma cantidad no se asigna el punto a ninguno de ellos (denominado **setenta**)
* 1 punto por cada **escoba** realizada durante la ronda.

## Consignas
+ Iniciar una partida (todas las cartas en el **mazo**)
+ Repartir las cartas de una **mano**.
+ Mostrar las cartas que están sobre la mesa, y las que están en poder de cada jugador (en cualquier momento). Las cartas se deberán indicarse utilizando las figuras y los palos (ej. el 12 de Oros deberá mostrarse como **Rey de Oros** y el 1 de Espadas como **As de Espadas** y el 2 de Copas como **7 de Copas**) 
+ Determinar si existe una **escoba de mano** y en caso afirmativo a qué jugador corresponde.
+ Determinar si una jugada es válida (suma 15 puntos) y si se trata de una **escoba.**
+ Determinar el final de una ronda (no quedan cartas en el **mazo).**
+ Las cartas que eventualmente queden en la mesa al final de una ronda serán "levantadas" por el jugador que haya recogido cartas en último lugar.
+ Determinar el puntaje obtenido por cada jugador al final de una ronda indicando el nombre del jugador y los puntos obtenidos.
