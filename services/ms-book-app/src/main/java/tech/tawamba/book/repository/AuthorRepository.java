package tech.tawamba.book.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import tech.tawamba.book.entity.AuthorEntity;

import java.util.Optional;

public interface AuthorRepository extends JpaRepository<AuthorEntity, Integer> {
    Optional<AuthorEntity> findAuthorByEmail(String email);
    Optional<AuthorEntity> findAuthorByPhoneNumber(String phoneNumber);
}
