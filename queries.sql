INSERT INTO users (email, password, name) VALUES
  ('ignat.v@gmail.com', '$2y$10$OqvsKHQwr0Wk6FMZDoHo1uHoXd4UdxJG/5UDtUiie00XaxMHrW8ka', 'Игнат'),
  ('kitty_93@li.ru', '$2y$10$bWtSjUhwgggtxrnJ7rxmIe63ABubHQs0AS0hgnOo41IEdMHkYoSVa', 'Леночка'),
  ('warrior07@mail.ru', '$2y$10$2OxpEH7narYpkOT1H5cApezuzh10tZEEQ2axgFOaKW.55LxIJBgWW', 'Руслан');

INSERT INTO projects (name, user_id) VALUES
  ("Все", 1),
  ("Все", 2),
  ("Все", 3),
  ("Входящие", 1),
  ("Входящие", 2),
  ("Входящие", 3),
  ("Учеба", 1),
  ("Учеба", 2),
  ("Учеба", 3),
  ("Работа", 1),
  ("Работа", 2),
  ("Работа", 3),
  ("Домашние дела", 1),
  ("Домашние дела", 2),
  ("Домашние дела", 3),
  ("Авто", 1),
  ("Авто", 2),
  ("Авто", 3);

INSERT INTO tasks (name, complete_until, completed_at, project_id, user_id) VALUES
  ("Собеседование в IT компании", "2018-06-01", NULL, 10, 1),
  ("Собеседование в IT компании", "2018-06-01", NULL, 11, 2),
  ("Собеседование в IT компании", "2018-06-01", NULL, 12, 3),
  ("Выполнить тестовое задание", "2018-05-25", NULL, 10, 1),
  ("Выполнить тестовое задание", "2018-05-25", NULL, 11, 2),
  ("Выполнить тестовое задание", "2018-05-25", NULL, 12, 3),
  ("Сделать задание первого раздела", "2018-04-21", "2018-04-21", 7, 1),
  ("Сделать задание первого раздела", "2018-04-21", "2018-04-21", 8, 2),
  ("Сделать задание первого раздела", "2018-04-21", "2018-04-21", 9, 3),
  ("Встреча с другом", "2018-04-22", NULL, 4, 1),
  ("Встреча с другом", "2018-04-22", NULL, 5, 2),
  ("Встреча с другом", "2018-04-22", NULL, 6, 3),
  ("Купить корм для кота", NULL, NULL, 13, 1),
  ("Купить корм для кота", NULL, NULL, 14, 2),
  ("Купить корм для кота", NULL, NULL, 15, 3),
  ("Заказать пиццу", NULL, NULL, 13, 1),
  ("Заказать пиццу", NULL, NULL, 14, 2),
  ("Заказать пиццу", NULL, NULL, 15, 2);

-- получить список из всех проектов для одного пользователя;
SELECT * FROM projects WHERE user_id = 1;

-- получить список из всех задач для одного проекта;
SELECT * FROM tasks WHERE project_id = 13 AND user_id = 1;

-- пометить задачу как выполненную;
UPDATE tasks SET completed_at = '2018-05-24' WHERE id = 4;

-- получить все задачи для завтрашнего дня;
SELECT * FROM tasks WHERE complete_until = CURDATE() + INTERVAL 1 DAY;

-- обновить название задачи по её идентификатору.
UPDATE tasks SET name = "Новое название" WHERE id = 1;