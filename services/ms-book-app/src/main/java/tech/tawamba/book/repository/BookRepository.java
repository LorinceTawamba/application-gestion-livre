package tech.tawamba.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tech.tawamba.book.entity.BookEntity;

import java.util.Optional;

public interface BookRepository extends JpaRepository<BookEntity, Integer> {
    Optional<BookEntity> findByIsbn(String isbn);
}
