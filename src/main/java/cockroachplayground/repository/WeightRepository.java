package cockroachplayground.repository;

import cockroachplayground.domain.Weigth;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WeightRepository extends JpaRepository<Weigth, Long> {
}
