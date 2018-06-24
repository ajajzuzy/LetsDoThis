package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.enity.Group;
import pl.coderslab.enity.User;

import java.util.List;

public interface GroupRepository extends JpaRepository<Group, Long> {

    public List<Group> findAllByUsersId(Long id);
    public  Group findFirstByEventsId (Long id);

}
