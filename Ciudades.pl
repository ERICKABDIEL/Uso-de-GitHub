estado(mexico).
estado(jalisco).
estado(nuevo_leon).
estado(oaxaca).
estado(queretaro).
estado(veracruz).

ciudad(toluca, mexico).
ciudad(nezahualcoyotl, mexico).
ciudad(iztapalapa, mexico).
ciudad(ecatepec, mexico).
ciudad(cuautitlan_izcalli, mexico).
ciudad(naucalpan_de_juarez, mexico).

ciudad(guadalajara, jalisco).
ciudad(puerto_vallarta, jalisco).
ciudad(tepic, jalisco).
ciudad(tlaquepaque, jalisco).
ciudad(zapopan, jalisco).
ciudad(tequila, jalisco).

ciudad(monterrey, nuevo_leon).
ciudad(san_pedro_garza_garcia, nuevo_leon).
ciudad(santa_catarina, nuevo_leon).
ciudad(apodaca, nuevo_leon).
ciudad(garcia, nuevo_leon).
ciudad(guadalupe, nuevo_leon).

ciudad(oaxaca_de_juarez, oaxaca).
ciudad(salina_cruz, oaxaca).
ciudad(huatulco, oaxaca).
ciudad(san_pedro_pochutla, oaxaca).
ciudad(juchitan_de_zaragoza, oaxaca).
ciudad(santa_cruz_huatulco, oaxaca).

ciudad(queretaro, queretaro).
ciudad(tequisquiapan, queretaro).
ciudad(san_juan_del_rio, queretaro).
ciudad(el_marques, queretaro).
ciudad(ezequiel_montes, queretaro).
ciudad(amanalco_de_becerra, queretaro).

ciudad(veracruz, veracruz).
ciudad(xalapa, veracruz).
ciudad(coatzacoalcos, veracruz).
ciudad(minatitlan, veracruz).
ciudad(poza_rica_de_hidalgo, veracruz).
ciudad(cordoba, veracruz).

capital(toluca).
capital(guadalajara).
capital(monterrey).
capital(oaxaca_de_juarez).
capital(queretaro).
capital(xalapa).

es_capital(X, Y) :- capital(X), ciudad(X, Y).
no_es_capital(Ciudad, Estado) :- ciudad(Ciudad, Estado), not(es_capital(Ciudad, Estado)).
#Ciudad no es capital de Estado si: Ciudad es una ciudad en Estado y no es capital de Estado.
