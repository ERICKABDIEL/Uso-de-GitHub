animal(elefante).
animal(leopardo).
animal(cebra).
animal(pinguino).
animal(condor).
animal(pato).
animal(dorado).
animal(salmon).
animal(pez_espada).

tiene_pelo(elefante).
tiene_pelo(leopardo).
tiene_pelo(cebra).

tiene_plumas(pinguino).
tiene_plumas(condor).
tiene_plumas(pato).

tiene_escamas(dorado).
tiene_escamas(salmon).
tiene_escamas(pez_espada).

es_vertebrado(elefante).
es_vertebrado(leopardo).
es_vertebrado(cebra).
es_vertebrado(pinguino).
es_vertebrado(condor).
es_vertebrado(pato).
es_vertebrado(dorado).
es_vertebrado(salmon).
es_vertebrado(pez_espada).

nace_huevo(pinguino).
nace_huevo(condor).
nace_huevo(pato).
nace_huevo(dorado).
nace_huevo(salmon).
nace_huevo(pez_espada).



es_reptil(Animal, Estado) :- tiene_escamas(Animal), es_vertebrado(Animal).

es_mamifero(Animal, Estado) :- tiene_pelo(Animal), es_vertebrado(Animal).

es_ave(Animal, Estado) :- tiene_plumas(Animal), es_vertebrado(Animal).



