package com.example.dslearnbds.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.dslearnbds.entities.Reply;



@Repository
public interface ReplyRepository extends JpaRepository<Reply, Long> {

}