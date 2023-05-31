(:Ejer 4:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
return <baile>{$x /profesor} and {$x /nombre}</baile>:)

(:Ejer 5:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
return <profesor>{$x/profesor}{$x/nombre}</profesor>:)

(:Ejer 6:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
order by //nombre
return //nombre:)

(:Ejer 7:)
(:for $x in doc("Actividad2 XQuery.xml")//baile
where /precio/@moneda = "euro"
return /nombre:)