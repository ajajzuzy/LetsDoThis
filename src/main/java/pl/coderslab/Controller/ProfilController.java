package pl.coderslab.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.enity.City;
import pl.coderslab.enity.Event;
import pl.coderslab.enity.Group;
import pl.coderslab.enity.User;
import pl.coderslab.repository.CityRepository;
import pl.coderslab.repository.EventRepository;
import pl.coderslab.repository.GroupRepository;
import pl.coderslab.repository.UserRepository;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Random;
import java.util.Set;

@Controller
@RequestMapping("/main")
public class ProfilController {

    @Autowired
    GroupRepository groupRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    EventRepository eventRepository;
    @Autowired
    CityRepository cityRepository;


    @GetMapping("/usergroups")
    public String userGroups2() {
        return "allgroups/usergroups";
    }


    @ModelAttribute("usergroups")
    public List<Group> getAllGroups(HttpSession session) {
        Long user_id = (Long) session.getAttribute("user_id");
        List<Group> lists = groupRepository.findAllByUsersId(user_id);
        return lists;

    }


    @GetMapping("/allgroups")
    public String allgroups(Model model) {
      List<City> cityAll =  cityRepository.findAll();
      model.addAttribute("cityAll", cityAll);
        return "allgroups/allgroups";
    }

    @ModelAttribute("groups")
    public List<Group> allGroups() {
        return groupRepository.findAll();
    }


    @GetMapping("/userevents")
    public String userEvents() {
        return "events/userevents";
    }


    @ModelAttribute("userevents")
    public List<Event> getAllEvents(HttpSession session) {
        Long user_id = (Long) session.getAttribute("user_id");
        List<Event> lists = eventRepository.findAllByUsersId(user_id);
        return lists;

    }


}
