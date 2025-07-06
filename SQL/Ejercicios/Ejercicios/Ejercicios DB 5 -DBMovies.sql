USE cinedb;
CREATE TABLE audit_log(
	audit_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    table_name VARCHAR(100) NOT NULL,
    operation_type ENUM("INSERT","UPDATE","DELETE"),
    record_id INT NOT NULL,
    changed_by VARCHAR(100) NOT NULL,
    change_timestamp TIMESTAMP,
    old_value TEXT,
    new_value TEXT
);
CREATE TABLE awards (
	award_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    award_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE movie_review (
	review_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id  INT,
    review_text VARCHAR(1000) NOT NULL,
    review_timestap  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id)
);
CREATE TABLE movie_award (
	movie_id INT,
    award_id INT,
    PRIMARY KEY(movie_id, award_id),
    FOREIGN KEY(movie_id) REFERENCES movies (movie_id),
    FOREIGN KEY(award_id) REFERENCES awards (award_id)
);





