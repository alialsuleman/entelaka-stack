 
CREATE DATABASE IF NOT EXISTS antelaka;
USE antelaka;

 
CREATE DATABASE IF NOT EXISTS chat_db
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE chat_db;

 
CREATE TABLE IF NOT EXISTS messages (
    id BIGINT NOT NULL AUTO_INCREMENT,
    uuid VARCHAR(255) DEFAULT NULL,
    sender_id INT NOT NULL,
    receiver_id INT NOT NULL,
    content TEXT NOT NULL,
    is_read TINYINT(1) DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    is_delivered TINYINT DEFAULT 0,
    PRIMARY KEY (id),
    KEY idx_sender_id (sender_id),
    KEY idx_receiver_id (receiver_id),
    KEY idx_created_at (created_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


GRANT ALL PRIVILEGES ON antelaka.* TO 'ali'@'%';
GRANT ALL PRIVILEGES ON chat_db.* TO 'ali'@'%';
FLUSH PRIVILEGES;