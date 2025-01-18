-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2025 年 1 月 18 日 03:09
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `recipe_share`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `instructions` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `title`, `ingredients`, `instructions`, `created_at`) VALUES
(1, 1, '【簡単10分！】卵かけご飯アレンジ', 'ご飯、卵、醤油、バター、刻み海苔', '1.熱々のご飯を用意します。\r\n2.バターを乗せて軽く溶かします。\r\n3.卵を割り入れ、醤油を適量かけます。\r\n4.全体をよく混ぜ、刻み海苔を散らして完成です。', '2025-01-18 10:00:00'),
(2, 1, '【お手軽】ツナと大根のサラダ', '大根、ツナ缶、マヨネーズ、塩、こしょう', '1.大根を細切りにします。\r\n2.ツナ缶を加え、マヨネーズで和えます。\r\n3.塩とこしょうで味を調えて完成です。', '2025-01-18 10:05:00'),
(3, 2, '【15分で本格】和風パスタ', 'スパゲッティ、醤油、みりん、バター、海苔', '1.スパゲッティを茹でます。\r\n2.フライパンにバターを溶かし、醤油とみりんを加えてソースを作ります。\r\n3.茹でたスパゲッティをソースに絡めます。\r\n4.お皿に盛り、刻み海苔を乗せて完成です。', '2025-01-18 10:10:00'),
(4, 2, '【朝食にピッタリ】ベーコンエッグトースト', '食パン、ベーコン、卵、チーズ', '1.食パンにベーコンを乗せます。\r\n2.卵を割り、チーズを振りかけます。\r\n3.オーブントースターで焼き、卵が好みの硬さになれば完成です。', '2025-01-18 10:15:00'),
(5, 2, '【おやつにも！】バナナヨーグルト', 'バナナ、プレーンヨーグルト、はちみつ、シナモン', '1.バナナを輪切りにします。\r\n2.ヨーグルトを器に盛り、バナナを乗せます。\r\n3.はちみつをかけ、シナモンを振りかけて完成です。', '2025-01-18 10:20:00'),
(6, 2, '【5分で完成】きゅうりの浅漬け', 'きゅうり、塩、昆布、醤油', '1.きゅうりを乱切りにします。\r\n2.塩をまぶし、軽く揉みます。\r\n3.昆布と醤油を加え、5分ほど漬け込んで完成です。', '2025-01-18 10:25:00'),
(7, 3, '【簡単本格】鶏むね肉のグリル', '鶏むね肉、塩、こしょう、オリーブオイル、レモン', '1.鶏むね肉に塩とこしょうをすり込みます。\r\n2.フライパンにオリーブオイルを熱し、鶏肉を両面焼きます。\r\n3.火を止め、レモンを絞って完成です。', '2025-01-18 10:30:00'),
(8, 3, '【デザート】いちごミルクプリン', 'いちご、牛乳、ゼラチン、砂糖', '1.ゼラチンを水でふやかします。\r\n2.鍋で牛乳と砂糖を温め、ゼラチンを溶かします。\r\n3.容器にいちごを入れ、牛乳を注ぎ冷蔵庫で冷やして完成です。', '2025-01-18 10:35:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, '佐藤　健', '$2y$10$k73121APVFEbP25UWJMnKOJ7tnyA/GFJE4kMzFtCK7CImt.UCMxpC', 'satoutakeru@example.com'),
(2, '山田　太郎', '$2y$10$NvKcE5JB1YhGwSQgQmED4OxAeOokQSDzB5GbNrbD0///568DK1KUq', 'yamada@example.com'),
(3, '高野　晴夫', '$2y$10$4PRpiRDE8eSt.NyXwLabA.ysS8KT/EqJJ9/jlyysuS01NHVywar8y', 'takano@example.com');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
