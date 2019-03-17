#each pokemons primary type
select pokemons.name, types.name
from pokemon.pokemons
join pokemon.types
on primary_type = types.id;

#Rufflets secondary type
select pokemons.name, types.name
from pokemon.pokemons
join pokemon.types
on secondary_type = types.id
where pokemons.id = 644;

#names of pokemon belonging to trainer 303
select trainername, name
from pokemon.trainers t
join pokemon.pokemon_trainer pt
on pt.trainerID = t.trainerID
join pokemon.pokemons p
on p.id = pt.pokemon_id
where t.trainerID = 303;