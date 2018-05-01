package mmaia.github.com.cockroachplayground.domain;

import lombok.Data;

import java.time.Instant;

@Data
public class Weigth {
  private Long id;
  private Instant dateTime;
  private float value;
  private User user;
}
