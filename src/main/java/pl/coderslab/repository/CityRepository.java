package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.enity.City;
import pl.coderslab.enity.User;

import java.util.List;

public interface CityRepository extends JpaRepository<City, Long> {

    public List<City> findAll();
}
