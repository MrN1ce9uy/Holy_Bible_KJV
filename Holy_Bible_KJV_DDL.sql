CREATE DATABASE Holy_Bible_KJV;

USE Holy_Bible_KJV;

CREATE TABLE book (
	book_id char(3) PRIMARY KEY NOT NULL,
	book_title varchar(15) NOT NULL,
	testament_id char(2) NOT NULL
	);

CREATE TABLE testament (
	testament_id char(2) PRIMARY KEY NOT NULL,
	testament char(13) NOT NULL
	);

CREATE TABLE verse (
	testament_id char(2) NOT NULL,
	book_id char(3) NOT NULL,
	chapter_id char(3) NOT NULL,
	verse_id varchar(3) NOT NULL,
	verse_text text NOT NULL,
	PRIMARY KEY (book_id, chapter_id, verse_id)
	);


