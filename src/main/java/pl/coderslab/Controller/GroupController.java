package pl.coderslab.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
import javax.validation.Valid;
import java.util.*;

@Controller
@RequestMapping("/main/allgroups")
public class GroupController {
    @Autowired
    GroupRepository groupRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    CityRepository cityRepository;
    @Autowired
    EventRepository eventRepository;


    @RequestMapping(value = "/add", produces = "text/html;charset=utf-8")
    public String showForm(Model model) {
        model.addAttribute("form", new Group());
        return "allgroups/form";
    }

    @ModelAttribute("cites")
    public Collection<City> allCites() {
        return cityRepository.findAll();
    }


    @PostMapping(value = "/add", produces = "text/html;charset=utf-8")
    public String newForm(@ModelAttribute("form") @Valid Group form, BindingResult result) {
        if (result.hasErrors()) {
            return "allgroups/form";
        }
        groupRepository.save(form);

        return "redirect:/main/allgroups";
    }




    @RequestMapping("/join")
    public String join(HttpSession session, @RequestParam Long GroupId){
      Long user_id = (Long) session.getAttribute("user_id");
        User user = userRepository.findOne(user_id);
       // List<Group> groups = user.getGroups();
        Group group = groupRepository.findOne(GroupId);
        user.getGroups().add(group);
//        user.setGroups(groups);
        this.userRepository.save(user);
        return "allgroups/textAdd";
    }

    @RequestMapping("/group")
    public String eventsofgroup(){
        return "allgroups/group";
    }

    @ModelAttribute("eventsofgroup")
    public Set<Event> details(@RequestParam(required = false) Long GroupId){
        if(GroupId == null) {
            return new HashSet<>();
        }
        Group group = groupRepository.findOne(GroupId);
       return group.getEvents();
    }

    @RequestMapping("/group/addevent")
    public String addEventToUser(HttpSession session, @RequestParam Long EventId){
        Long user_id = (Long) session.getAttribute("user_id");
        User user = userRepository.findOne(user_id);

        Event event = eventRepository.findOne(EventId);
        Group group = groupRepository.findFirstByEventsId(EventId);
        user.getEvents().add(event);
        user.getGroups().add(group);
//        user.setGroups(groups);
        this.userRepository.save(user);
        return "events/textAdd";
    }

}
