package com.lamtraining.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lamtraining.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>  {
	UserEntity findOneByUserName(String name);
}
