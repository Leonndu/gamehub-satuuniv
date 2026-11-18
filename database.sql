CREATE DATABASE IF NOT EXISTS satu_gamehub CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE satu_gamehub;

CREATE TABLE IF NOT EXISTS users (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS sessions (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  token CHAR(64) NOT NULL UNIQUE,
  expires_at DATETIME NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_sessions_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  INDEX idx_sessions_token (token)
);

-- =========================
-- DATA KARYA / GAME
-- =========================
CREATE TABLE IF NOT EXISTS works (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  created_by INT UNSIGNED NOT NULL,
  title VARCHAR(150) NOT NULL,
  description TEXT NOT NULL,
  game_url VARCHAR(500) NOT NULL,
  play_count INT UNSIGNED NOT NULL DEFAULT 0,
  major ENUM('Teknik Informatika', 'Sistem Informasi', 'Kolaborasi') NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT fk_works_user FOREIGN KEY (created_by) REFERENCES users(id) ON DELETE CASCADE,
  INDEX idx_works_created_by (created_by),
  INDEX idx_works_title (title)
);

ALTER TABLE works ADD COLUMN IF NOT EXISTS game_url VARCHAR(500) NULL AFTER description;
ALTER TABLE works ADD COLUMN IF NOT EXISTS play_count INT UNSIGNED NOT NULL DEFAULT 0 AFTER game_url;

CREATE TABLE IF NOT EXISTS work_images (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  work_id INT UNSIGNED NOT NULL,
  image_path VARCHAR(500) NOT NULL,
  sort_order INT UNSIGNED NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_work_images_work FOREIGN KEY (work_id) REFERENCES works(id) ON DELETE CASCADE,
  INDEX idx_work_images_work (work_id, sort_order)
);

CREATE TABLE IF NOT EXISTS work_guides (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  work_id INT UNSIGNED NOT NULL,
  step_number INT UNSIGNED NOT NULL,
  instruction TEXT NOT NULL,
  CONSTRAINT fk_work_guides_work FOREIGN KEY (work_id) REFERENCES works(id) ON DELETE CASCADE,
  UNIQUE KEY uq_work_guide_step (work_id, step_number)
);

CREATE TABLE IF NOT EXISTS work_creators (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  work_id INT UNSIGNED NOT NULL,
  creator_name VARCHAR(150) NOT NULL,
  sort_order INT UNSIGNED NOT NULL DEFAULT 1,
  CONSTRAINT fk_work_creators_work FOREIGN KEY (work_id) REFERENCES works(id) ON DELETE CASCADE,
  INDEX idx_work_creators_work (work_id, sort_order)
);

CREATE TABLE IF NOT EXISTS work_likes (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  work_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_work_likes_work FOREIGN KEY (work_id) REFERENCES works(id) ON DELETE CASCADE,
  CONSTRAINT fk_work_likes_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  UNIQUE KEY uq_work_like_user (work_id, user_id),
  INDEX idx_work_likes_work (work_id)
);

CREATE TABLE IF NOT EXISTS work_comments (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  work_id INT UNSIGNED NOT NULL,
  user_id INT UNSIGNED NOT NULL,
  comment_text TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_work_comments_work FOREIGN KEY (work_id) REFERENCES works(id) ON DELETE CASCADE,
  CONSTRAINT fk_work_comments_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
  INDEX idx_work_comments_work (work_id, created_at)
);
