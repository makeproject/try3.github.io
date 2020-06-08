package com.lms.dao;

import org.springframework.data.repository.CrudRepository;

import com.lms.model.Book;

public interface LmsRepository  extends CrudRepository<Book, Long>{

	void delete(long id);

	Book findOne(long id);

}
