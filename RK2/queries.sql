-- ! Перед использованием удалить комментарии! --

use Family;

-- Получить все сведения о мужчинах, которые никогда не состояли в браке, но которые были отцами. 

select *
from
	Person as Man
where
	Man.PersonID not in (select HusbandID from Marriage)
	and 
	Man.PersonID in (select FatherID from Person)
;



-- Получить все сведения о тех персонах, чьи родители не состояли в браке. 

with Family_cte(ChildID, FatherID, MotherID) as (
	select 
		Child.PersonID, Child.FatherID, Child.MotherID
	from 
		Person as Child left join Marriage as Parent
		on Child.FatherID = Parent.HusbandID and Child.MotherID = Parent.WifeID
	where 
		Parent.MarriageID is null
)
select *
from 
	Person as Child
where
	Child.PersonID = (select ChildID from Family_cte Fml where Fml.FatherID is not null and Fml.MotherID is not null)
;



-- Для каждой пары родителей указать количество их детей. 
-- Список должен включать: 
-- | Имя и фамилию отца | Имя и фамилию матери | Количество детей |
-- Для каждой пары родителей указать количество их детей. 
-- Список должен включать: 
-- | Имя и фамилию отца | Имя и фамилию матери | Количество детей |

with Family_cte(FatherID, MotherID, nChildren) as (
	select 
		Child.FatherID,
		Child.MotherID,
		count(Child.FatherID)
	from
		Person as Child
	where 
		Child.FatherID is not null 
		and 
		Child.MotherID is not null
	group by
		Child.FatherID, Child.MotherID
)
select
	(select Father.FirstName+' '+Father.LastName from Person as Father where Father.PersonID = Fml.FatherID) as FatherFullName,
	(select Mother.FirstName+' '+Mother.LastName from Person as Mother where Mother.PersonID = Fml.MotherID) as MotherFullName,
	Fml.nChildren
from 
	Family_cte as Fml
;