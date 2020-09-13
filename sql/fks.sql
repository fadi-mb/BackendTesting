ALTER TABLE `companies`
  ADD CONSTRAINT `fk_companies_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_people` FOREIGN KEY (`person_id`) REFERENCES `people` (`person_id`),
  ADD CONSTRAINT `fk_users_companies` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
