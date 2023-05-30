for $x in doc("Actividad2 XQuery.xml")//baile
where $x/precio/@cuota = "mensual"
return $x /profesor
