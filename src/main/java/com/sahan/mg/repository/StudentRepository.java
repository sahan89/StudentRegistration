package com.sahan.mg.repository;

import com.sahan.mg.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by sahan on 2019-01-29.
 */
public interface StudentRepository extends JpaRepository<Student, Integer> {
}
