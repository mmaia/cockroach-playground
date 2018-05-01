package mmaia.github.com.cockroachplayground.domain;

import lombok.Data;

import java.time.Instant;

@Data
public class Meal {
  private Long id;
  private Instant dateTime;
  private String description;
  private User user;
}
