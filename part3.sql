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

#how many pokemon have a secondary type poison
select p.name
from pokemon.pokemons p
join pokemon.types t
on t.id = p.secondary_type
where t.id = 7;

#what are all of the primary types and how many pokemon have them
select t.name, p.name
from pokemon.types t
join pokemon.pokemons p
on p.primary_type = t.id
order by t.id

#How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
select p.name, pt.pokelevel, t.trainerID
from pokemon.pokemons p
join pokemon.pokemon_trainer pt
on pt.pokemon_id = p.id
join pokemon.trainers t
on t.trainerID = pt.trainerID
where pt.pokelevel = 100;

select pt.trainerID, count(*)
from pokemon_trainer pt
where pt.pokelevel = '100'
group by pt.trainerID;

#How many pokemon only belong to one trainer and no other?
select count(*)
from (select count(pt.pokemon_id) from pokemon_trainer pt group by pokemon_id having count(*) = 1) a;