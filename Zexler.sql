
DROP TABLE IF EXISTS Company CASCADE;
DROP TABLE IF EXISTS Feedback CASCADE;
DROP TABLE IF EXISTS Email_send CASCADE;

CREATE TABLE Company (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    rating DECIMAL(3,1),
    prosmotr INTEGER,
    status_sotrudn VARCHAR(50)
);



CREATE TABLE Feedback (
    id SERIAL PRIMARY KEY,
    comp_id INTEGER REFERENCES Company(id),
    name VARCHAR(255) NOT NULL,
    date TIMESTAMP,
    obsh_vpechatleniya VARCHAR(50)
);

CREATE TABLE Email_send (
    id SERIAL PRIMARY KEY,
    campaigh_id BIGINT,
    email VARCHAR(255) NOT NULL,
    status VARCHAR(50),
    date TIMESTAMP,
    comp_id INTEGER REFERENCES Company(id)
);

INSERT INTO Company (name, email, rating, prosmotr, status_sotrudn)
VALUES
    ('ООО Ромашка', 'romashka@mail.ru', 4.5, 89000, 'Не партнер'),
    ('ООО Подсолнух', 'podsolnux@mail.ru', 3, 2000, 'Не партнер'),
    ('ООО Роза', 'roza@mail.ru', 0, 100000, 'Не партнер'),
    ('ООО Фиалка', 'fialka@mail.ru', 3.9, 5000, 'Не партнер'),
    ('ООО Лилия', 'liliya@mail.ru', 2, 65000, 'Не партнер'),
    ('ООО Георгин', 'georgin@mail.ru', 1, 150000, 'Не партнер'),
    ('ООО Солнечный день', 'sunnyday@mail.ru', 4.2, 75000, 'Не партнер'),
    ('ООО Цветочный рай', 'flowerparadise@mail.ru', 3.7, 30000, 'Не партнер'),
    ('ООО Зеленая поляна', 'greenmeadow@mail.ru', 2.8, 45000, 'Не партнер'),
    ('ООО Дружный коллектив', 'friendlyteam@mail.ru', 4.9, 120000, 'Партнер'),
    ('ООО Жаркий юг', 'hotregion@mail.ru', 1.5, 9000, 'Не партнер'),
    ('ООО Холодная зима', 'coldwinter@mail.ru', 3.3, 80000, 'Не партнер'),
    ('ООО Морской бриз', 'seabreeze@mail.ru', 4.7, 95000, 'Партнер'),
    ('ООО Горный лес', 'mountainforest@mail.ru', 2.1, 6000, 'Не партнер'),
    ('ООО Полярное сияние', 'northernlights@mail.ru', 4.6, 85000, 'Партнер');



INSERT INTO Feedback (comp_id, name, date, obsh_vpechatleniya)
VALUES
    (4, 'Аноним', '2023-05-12 20:07', 'рекомендую'),
    (2, 'Ольга', '2020-06-05 23:14', 'не рекомендую'),
	(3, 'Иван', '2023-07-21 14:30', 'рекомендую'),
    (8, 'Елена', '2024-01-08 10:45', 'не рекомендую'),
    (6, 'Александр', '2023-11-15 18:22', 'рекомендую'),
	(8, 'Мария', '2023-09-10 09:15', 'не рекомендую'),
    (4, 'Петр', '2024-02-28 16:55', 'рекомендую'),
    (2, 'Светлана', '2023-12-05 11:30', 'рекомендую'),
    (5, 'Дмитрий', '2024-03-17 14:20', 'рекомендую'),
    (7, 'Наталья', '2024-05-01 08:45', 'не рекомендую'),
	(6, 'Анна', '2023-08-21 12:30', 'рекомендую'),
    (1, 'Владимир', '2024-04-05 09:40', 'не рекомендую'),
    (2, 'Татьяна', '2023-10-12 15:20', 'рекомендую'),
    (3, 'Артем', '2024-02-15 17:10', 'не рекомендую'),
    (4, 'Юлия', '2023-06-28 08:55', 'рекомендую'),
    (5, 'Михаил', '2024-01-15 14:25', 'не рекомендую'),
    (8, 'Евгения', '2023-11-30 11:35', 'рекомендую'),
    (1, 'Сергей', '2023-09-25 10:50', 'не рекомендую'),
    (7, 'Анастасия', '2024-03-10 16:15', 'рекомендую'),
    (3, 'Денис', '2024-05-20 13:05', 'не рекомендую'),
    (4, 'Оксана', '2023-07-18 07:20', 'рекомендую'),
    (10, 'Ирина', '2024-02-05 09:30', 'не рекомендую'),
    (6, 'Григорий', '2023-10-22 14:45', 'рекомендую'),
    (9, 'Вера', '2024-04-15 12:10', 'не рекомендую'),
    (2, 'Роман', '2023-12-20 15:55', 'рекомендую'),
    (3, 'Елена', '2024-06-05 08:40', 'не рекомендую'),
    (8, 'Алексей', '2023-08-10 11:25', 'рекомендую'),
    (5, 'Николай', '2024-03-25 10:15', 'не рекомендую'),
    (6, 'Людмила', '2023-12-01 13:50', 'рекомендую'),
    (9, 'Геннадий', '2024-05-28 09:20', 'не рекомендую');


INSERT INTO Email_send (campaigh_id, email, status, date, comp_id)
VALUES
    (319182554, 'roza@mail.ru', 'ok_delivered', '2024-04-15 07:48', 3),
    (319182998, 'roza@mail.ru', 'ok_delivered', '2024-04-25 16:43', 3),
    (319182554, 'liliya@mail.ru', 'ok_unsubscribed', '2024-04-15 07:48', 5),
	(319182932, 'romashka@mail.ru', 'ok_delivered', '2024-04-28 10:15', 1),
    (319183002, 'podsolnux@mail.ru', 'ok_delivered', '2024-04-30 14:20', 2),
    (319183006, 'roza@mail.ru', 'ok_delivered', '2024-05-02 08:30', 3),
    (319183010, 'fialka@mail.ru', 'ok_unsubscribed', '2024-05-04 12:45', 4),
    (319183014, 'liliya@mail.ru', 'ok_delivered', '2024-05-06 16:55', 5);


SELECT COUNT(name) FROM Company 
WHERE email IS NOT NULL;

SELECT * FROM Company 
WHERE prosmotr > 50000 AND rating < 4 AND status_sotrudn = 'Не партнер';

SELECT c.name as company_name, COUNT(f.comp_id) AS num_reviews
FROM Company c
LEFT JOIN Feedback f ON c.id = f.comp_id
GROUP BY c.name
ORDER BY num_reviews DESC
LIMIT 10;

SELECT id, name, rating, status_sotrudn
FROM Company
WHERE rating >= 4
AND status_sotrudn = 'Не партнер'
AND id IN (
    SELECT comp_id
    FROM Feedback
    WHERE obsh_vpechatleniya = 'не рекомендую'
);

SELECT c.id, c.name, c.email, c.rating, c.prosmotr, c.status_sotrudn
FROM Company c
INNER JOIN Email_send es ON c.id = es.comp_id
WHERE c.rating = 2 
AND c.status_sotrudn = 'Не партнер'
AND es.status = 'ok_delivered'
GROUP BY c.id, c.name, c.email, c.rating, c.prosmotr, c.status_sotrudn
HAVING COUNT(es.comp_id) = 1;




