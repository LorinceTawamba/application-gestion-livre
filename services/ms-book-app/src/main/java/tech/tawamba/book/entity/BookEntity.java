package tech.tawamba.book.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;

@Getter
@Setter
@SuperBuilder
@EqualsAndHashCode(callSuper=false)
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "books")
public class BookEntity extends BaseAuditingEntity {
    private String isbn;
    private String title;
    private String description;
    private int pageNumber;
    private LocalDate publishedDate;
    private AuthorEntity author;
}
