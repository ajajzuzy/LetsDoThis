package pl.coderslab.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.enity.Event;
import pl.coderslab.enity.User;
import pl.coderslab.repository.EventRepository;
import pl.coderslab.repository.UserRepository;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Random;

@Controller
public class HomeController {
    @Autowired
    UserRepository userRepository;
    @Autowired
    EventRepository eventRepository;

    @RequestMapping("/")
    public String index(Model model, HttpSession session) {
        String email = (String) session.getAttribute("email");
        if (email != null) {
            User user = userRepository.findFirstByEmail(email);
            model.addAttribute("user", user);
        }
        return "index";
    }

    @RequestMapping("/main")
    public String randomEvents(HttpSession httpSession, Model model) {
//            Long user_id = (Long) httpSession.getAttribute("user_id");
//            User user = userRepository.findOne(user_id);
//            List<Event> events = eventRepository.findAllByUsersId(user_id);
//            Random rand = new Random();
//            int randInt = rand.nextInt(events.size())+1;
//            Long int1 = Long.valueOf(randInt);
//            Event event1 =  eventRepository.findOne(int1);
//            model.addAttribute("event1",event1);
//            return "profil/stronag";


        List<Event> eventsRandom = eventRepository.findAll();
        Random rand = new Random();
        int randInt = rand.nextInt(eventsRandom.size()) + 1;
        int randInt2 = rand.nextInt(eventsRandom.size()) + 1;
        int randInt3 = rand.nextInt(eventsRandom.size()) + 1;
        Long int1 = Long.valueOf(randInt);
        Event event1 = eventRepository.findOne(int1);
       int event1Size = event1.getUsers().size();
        model.addAttribute("event1", event1);
        model.addAttribute("event1Size",event1Size);
        while (randInt == randInt2) {
            randInt2 = rand.nextInt(eventsRandom.size()) + 1;
        }
        Long int2 = Long.valueOf(randInt2);
        Event event2 = eventRepository.findOne(int2);
        int event2Size = event2.getUsers().size();
        model.addAttribute("event2", event2);
        model.addAttribute("event2Size",event2Size);
        while(randInt3==randInt2 || randInt3==randInt){
            randInt3 =rand.nextInt(eventsRandom.size()) + 1;
        }
        Long int3 = Long.valueOf(randInt3);
        Event event3 = eventRepository.findOne(int3);
        int event3Size = event3.getUsers().size();
        model.addAttribute("event3", event3);
        model.addAttribute("event3Size",event3Size);

        return "profil/stronag";
    }


}
