-- Вставка жанров
INSERT INTO Genre VALUES
(1, 'Рок'),
(2, 'Поп'),
(3, 'Хип-хоп'),
(4, 'Электроника'),
(5, 'Джаз');

-- Вставка исполнителей
INSERT INTO Artist VALUES
(1, 'The Beatles'),
(2, 'Michael Jackson'),
(3, 'Eminem'),
(4, 'Daft Punk'),
(5, 'Queen'),
(6, 'Taylor Swift');

-- Вставка альбомов
INSERT INTO Album VALUES
(1, 'Abbey Road', 1969),
(2, 'Thriller', 1982),
(3, 'The Marshall Mathers LP', 2000),
(4, 'Random Access Memories', 2013),
(5, 'A Night at the Opera', 1975),
(6, 'Lover', 2019);

-- Вставка треков
INSERT INTO Track VALUES
(1, 'Come Together', 259, 1),
(2, 'Something', 182, 1),
(3, 'Billie Jean', 294, 2),
(4, 'Beat It', 258, 2),
(5, 'The Real Slim Shady', 284, 3),
(6, 'Stan', 404, 3),
(7, 'Get Lucky', 369, 4),
(8, 'Instant Crush', 337, 4),
(9, 'Bohemian Rhapsody', 354, 5),
(10, 'You''re My Best Friend', 172, 5),
(11, 'Anti-Hero', 201, 6);

-- Связи исполнителей с альбомами
INSERT INTO Album_Artist VALUES
(1, 1, 1),   -- The Beatles - Abbey Road
(2, 2, 2),   -- Michael Jackson - Thriller
(3, 3, 3),   -- Eminem - The Marshall Mathers LP
(4, 4, 4),   -- Daft Punk - Random Access Memories
(5, 5, 5),   -- Queen - A Night at the Opera
(6, 1, 5),   -- Queen + в Abbey Road
(7, 6, 6);   -- Taylor Swift - Lover

-- Связи исполнителей с жанрами
INSERT INTO Artist_Genre VALUES
(1, 1, 1),   -- The Beatles - Рок
(2, 2, 2),   -- Michael Jackson - Поп
(3, 2, 1),   -- Michael Jackson - также Рок
(4, 3, 3),   -- Eminem - Хип-хоп
(5, 4, 4),   -- Daft Punk - Электроника
(6, 5, 1),   -- Queen - Рок
(7, 5, 5),   -- Queen - также Джаз
(8, 6, 2);	 -- Taylor Swift - Поп

-- Вставка сборников
INSERT INTO Collection VALUES
(1, 'Рок Лучшее', 2010),
(2, 'Поп-музыка 80-х', 2011),
(3, 'В спортзал', 2024),
(4, 'Для души', 2020);

-- Связи сборников с треками
INSERT INTO Collection_Track VALUES
(1, 1, 1),   -- Come Together в Рок Лучшее
(2, 1, 9),   -- Bohemian Rhapsody в Рок Лучшее
(3, 2, 3),   -- Billie Jean в Поп-музыка 80-х
(4, 2, 4),   -- Beat It в Поп-музыка 80-х
(5, 3, 5),   -- The Real Slim Shady в В спортзал
(6, 3, 6),   -- Stan в В спортзал
(7, 3, 7),   -- Get Lucky в В спортзал
(8, 4, 8),   -- Instant Crush в Для души
(9, 4, 2),   -- Something в Для души
(10, 4, 9),  -- Bohemian Rhapsody в Для души
(11, 4, 11), -- Anti-Hero в Для души
(12, 3, 11); -- Anti-Hero В спортзал
