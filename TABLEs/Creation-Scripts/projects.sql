CREATE TABLE `projects` (
  `project_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `lead_employee_id` int DEFAULT NULL,
  PRIMARY KEY (`project_id`),
  KEY `lead_employee_id` (`lead_employee_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`lead_employee_id`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci