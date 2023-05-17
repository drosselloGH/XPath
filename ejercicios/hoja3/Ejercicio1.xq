(: año en que se publico "la vida esta en otra parte":)
(://libro[titulo = "La vida está en otra parte"]/fechaPublicacion/@anyo:)

(:OBTENER TITULOS LIBROS PUBLICADOS EN 1973:)
(://libro[fechaPublicacion/@anyo = 1973]/titulo:)

(://libro[fechaPublicacion/@anyo = //libro[titulo = "La vida está en otra parte"]/fechaPublicacion/@anyo ]/titulo:)

(:obtener titulos del mismo autor que la novela "panaleon y las visitadoras":)
(://libro[titulo = "Pantaleón y las visitadoras"]/autor/text():)

//libro[autor = //libro[titulo = "Pantaleón y las visitadoras"]/autor/text() ]/titulo