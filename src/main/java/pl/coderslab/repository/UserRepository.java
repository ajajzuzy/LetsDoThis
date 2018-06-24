package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.enity.User;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    public User findFirstByEmail(String email);




}
