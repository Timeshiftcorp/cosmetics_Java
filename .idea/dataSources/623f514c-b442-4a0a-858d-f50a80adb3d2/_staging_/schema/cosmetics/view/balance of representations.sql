CREATE VIEW `balance of representations` AS
  SELECT
    `agencycosts`.`id`                            AS `id`,
    `agencycosts`.`name`                        AS `name`,
    `agencycosts`.`Sum`                         AS `Sum`,
    `incomes of representative offices`.`price` AS `price`
  FROM (`cosmetics`.`incomes of representative offices`
    JOIN `cosmetics`.`agencycosts` ON ((`incomes of representative offices`.`name` = `agencycosts`.`name`)));
