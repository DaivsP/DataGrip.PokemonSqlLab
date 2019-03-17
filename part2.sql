#get all types a pokemon can have
SELECT types.name
from pokemon.types;

#name of pokemon 45
SELECT id, name
from pokemon.pokemons
where id=45;

#how many pokemon there are
SELECT id
from pokemon.pokemons;

#how many types there are
select ID
from pokemon.types;

#how many pokemon have a secondary type
SELECT secondary_type
from pokemon.pokemons
where secondary_type;