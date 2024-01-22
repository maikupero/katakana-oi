CREATE TABLE entry
(
  id                        VARCHAR(255) NOT NULL PRIMARY KEY,
  phrase                    VARCHAR(500) NOT NULL,
  description               VARCHAR(5000),
  create_date               DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE = InnoDB;