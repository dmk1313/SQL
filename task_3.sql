/*1. Вывести имена всех игроков, которые не имеют достижений*/
SELECT player.nickname from player left join achievement on player.id = achievement.player_id
where achievement.player_id is null;

/*2. Вывести имена всех игроков, у которых сумма очков больше 800 и их очки. В запросе желательно использовать having*/
SELECT player.nickname from player join achievement on player.id = achievement.player_id join score on achievement.id = score.achievement_id
GROUP by player.nickname
HAVING sum(score.amount) > 800;

/*3. Получить информацию о игроке, набравшим самое большое количество очков*/
SELECT player.nickname, player.date_of_start_game, guild.name, achievement.name, max(score.amount) as 'Max_score' from player join achievement on player.id = achievement.player_id 
join score on achievement.id = score.achievement_id join guild on guild.id = player.guild_id; 

/*4. Подсчитать для каждой гильдии сумму всех очков всех ее игроков. Вывести название гильдии и кол-во очков по убыванию, начиная  от самого наибольшего к наименьшему*/
SELECT guild.name, sum(score.amount) as 'sum_score' from player join achievement on player.id = achievement.player_id 
join score on achievement.id = score.achievement_id join guild on guild.id = player.guild_id
GROUP by guild.name
ORDER by sum(score.amount) DESC;

/*5. Вывести имя игрока и его гильдию, фамилия которого начинается с “B” и больше одной буквы */
SELECT player.nickname, guild.name from player join guild on guild.id = player.guild_id
where player.nickname like '%B_%';

/*6. Создать в таблице гильдия новую команду*/
insert into guild (id, name) values (9, 'Give_me_offer_plz');

/*7. Создать в таблице player не менее 2-х игроков, которые должны входить в созданную вами гильдию*/
insert into player (id, nickname, date_of_start_game, guild_id) values (14, 'Dmitry Makarov', '2022-11-15', 9);
insert into player (id, nickname, date_of_start_game, guild_id) values (15, 'offer plz', '2019-11-15', 9);

/*8. Вывести всех игроков, кто вступил в гильдию, вместе с именем этой гильдии используя оператор join*/
SELECT player.nickname, guild.name from player join guild on guild.id = player.guild_id;

/*9. Добавить к имени каждого игрока название гильдии одним запросом. Уточнение: В результате запроса должно измениться имя игрока в таблице player*/
update player set nickname = 
(SELECT player.nickname || ' ' || guild.name from guild where guild.id = player.guild_id)
where player.guild_id is not null;

/*10. Вывести в алфавитном порядке названия всех уникальных достижений, которые были у игроков*/
SELECT DISTINCT achievement.name from achievement join player on achievement.player_id = player.id
order by achievement.name ASC;
