#Write a query that returns the following collumns:
#Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
#Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name
#Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
#You may interpret strongest in whatever way you want, but you will have to explain your decision.
SELECT p.name           as 'Pokemon Name',
       trainername    as 'Trainer Name',
       pokelevel      as 'level',
       t1.name     as 'Primary Type',
       t2.name as 'Secondary Type'

FROM pokemon.pokemon_trainer pt
     left outer join pokemon.trainers as t on t.trainerID = pt.trainerID
left outer join pokemon.pokemons as p on p.id = pt.pokemon_id
left outer join pokemon.types as t1 on p.primary_type = t1.id
left outer join pokemon.types as t2 on p.secondary_type = t2.id
order by level desc