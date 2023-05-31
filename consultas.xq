(:Ejer 4:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
  return (data($x /profesor), data($x /nombre)):)
(:importante!!:)

(:Ejer 5:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
return <profesor><nombre>{data($x/profesor)}</nombre><baile>{data($x/nombre)}</baile></profesor>:)

(:Ejer 6:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
order by $x/nombre
return $x /nombre:)

(:Ejer 7:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
where $x/precio/@moneda = "euro"
order by $x/nombre
return $x/nombre:)

(:Ejer 8:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
where $x/plazas < 20 and $x/precio/@moneda = "dolares"
return $x/nombre:)


(: ------ HOJA 3 ------:)


(:Ejer 1:)
(:for $x in doc("Actividad3 XQuery.xml")/vuelos
return $x//linea_aerea/nombre:)

(:Ejer 2:)
(:for $x in doc("Actividad3 XQuery.xml")/vuelos
return $x//reserva:)

(:Ejer 3:)
(:for $x in doc("Actividad3 XQuery.xml")/vuelos
return data($x//pasajero/nombre):)

(:Ejer 4:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/abonado
return $x:)

(:Ejer 5:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
return $x /localizador:)

(:Ejer 6:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
return 
  <reserva>
    <localizador>{data($x/localizador)}</localizador>
     <nombre>{data($x/pasajero/nombre)}</nombre>
   </reserva>:)
   
(:Ejer 7:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
return 
  <reserva>
    {data($x/localizador),data(", "), data($x/pasajero/nombre)}
   </reserva>:)
   
(:Ejer 8:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/destino = "Santiago de Compostela"
return $x:)

(:Ejer 9:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/origen = "París" and $x/destino = "Palma de Mallorca"
return $x:)

(:Ejer 10:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/origen = "Valencia" 
order by $x/fecha
return $x/pasajero/nombre:)

(:Ejer 11:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/origen = "París" or $x/origen = "Valencia"
return <pasajero><nombre>{data($x/pasajero/nombre)}</nombre><origen>{data($x/origen)}</origen></pasajero>:)

(:Ejer 12:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/origen = "París" or $x/origen = "Valencia"
order by $x/origen
return <pasajero><nombre>{data($x/pasajero/nombre)}</nombre><origen>{data($x/origen)}</origen></pasajero>:)


(:----- HOJA 4 -----:)


(:Ejer 1:)
(:for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/precio/@moneda = "euro"
return $x/localizador:)

(:Ejer 2:)
for $x in doc("Actividad3 XQuery.xml")//reserva
where $x/precio/@moneda = "euro"
return <localizador>{$x/precio/@moneda}{data($x/localizador)}</localizador>

(:Ejer 7:)
(:let $x := doc("Actividad3 XQuery.xml")//reserva/precio
  se genera como un arrayList de reservas
return count($x):)

(:Ejer 8:)
(:let $x := doc("Actividad3 XQuery.xml")//reserva/precio
return max($x) and min($x)
<body>
<h1>Vuelo mas caro y mas barato</h1>
{
let $x := doc("Actividad3 XQuery.xml")//reserva/precio
return <p>El vuelo mas casro cuesta (max($x))€, y el mas barato, (min($x))€</p>}
</body>:)

(:Ejer 9:)
(:for $x in distinct-values(doc("Actividad3 XQuery.xml")//reserva/origen)
order by $x
return $x:)

(:Ejer 10:)
(:let $x := doc("Actividad3 XQuery.xml")//reserva/precio
return sum($x):)