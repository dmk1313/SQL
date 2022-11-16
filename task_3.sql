/*1. ������� ����� ���� �������, ������� �� ����� ����������*/
SELECT player.nickname from player left join achievement on player.id = achievement.player_id
where achievement.player_id is null;

/*2. ������� ����� ���� �������, � ������� ����� ����� ������ 800 � �� ����. � ������� ���������� ������������ having*/
SELECT player.nickname from player join achievement on player.id = achievement.player_id join score on achievement.id = score.achievement_id
GROUP by player.nickname
HAVING sum(score.amount) > 800;

/*3. �������� ���������� � ������, ��������� ����� ������� ���������� �����*/
SELECT player.nickname, player.date_of_start_game, guild.name, achievement.name, max(score.amount) as 'Max_score' from player join achievement on player.id = achievement.player_id 
join score on achievement.id = score.achievement_id join guild on guild.id = player.guild_id; 

/*4. ���������� ��� ������ ������� ����� ���� ����� ���� �� �������. ������� �������� ������� � ���-�� ����� �� ��������, �������  �� ������ ����������� � �����������*/
SELECT guild.name, sum(score.amount) as 'sum_score' from player join achievement on player.id = achievement.player_id 
join score on achievement.id = score.achievement_id join guild on guild.id = player.guild_id
GROUP by guild.name
ORDER by sum(score.amount) DESC;

/*5. ������� ��� ������ � ��� �������, ������� �������� ���������� � �B� � ������ ����� ����� */
SELECT player.nickname, guild.name from player join guild on guild.id = player.guild_id
where player.nickname like '%B_%';

/*6. ������� � ������� ������� ����� �������*/
insert into guild (id, name) values (9, 'Give_me_offer_plz');

/*7. ������� � ������� player �� ����� 2-� �������, ������� ������ ������� � ��������� ���� �������*/
insert into player (id, nickname, date_of_start_game, guild_id) values (14, 'Dmitry Makarov', '2022-11-15', 9);
insert into player (id, nickname, date_of_start_game, guild_id) values (15, 'offer plz', '2019-11-15', 9);

/*8. ������� ���� �������, ��� ������� � �������, ������ � ������ ���� ������� ��������� �������� join*/
SELECT player.nickname, guild.name from player join guild on guild.id = player.guild_id;

/*9. �������� � ����� ������� ������ �������� ������� ����� ��������. ���������: � ���������� ������� ������ ���������� ��� ������ � ������� player*/
update player set nickname = 
(SELECT player.nickname || ' ' || guild.name from guild where guild.id = player.guild_id)
where player.guild_id is not null;

/*10. ������� � ���������� ������� �������� ���� ���������� ����������, ������� ���� � �������*/
SELECT DISTINCT achievement.name from achievement join player on achievement.player_id = player.id
order by achievement.name ASC;
