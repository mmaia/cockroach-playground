package cockroachplayground.domain;

import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.Instant;
@Getter
@ToString
@EqualsAndHashCode
@Builder
@Entity
public class Meal {

  @Id
  @GeneratedValue(strategy=GenerationType.IDENTITY)
  @Column(name="id", nullable=false, unique=true)
  private Long id;

  @Column
  private Instant dateTime;

  @Column
  private String description;

  @ManyToOne
  @JoinColumn(name="user_id")
  private User user;
}
