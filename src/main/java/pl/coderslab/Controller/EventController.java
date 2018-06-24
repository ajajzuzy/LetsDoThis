package pl.coderslab.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.enity.Event;
import pl.coderslab.enity.Group;
import pl.coderslab.repository.EventRepository;
import pl.coderslab.repository.GroupRepository;

import javax.validation.Valid;

@Controller
@RequestMapping("main/events")
public class EventController {

    @Autowired
    EventRepository eventRepository;
    @Autowired
    GroupRepository groupRepository;

    @RequestMapping(value = "/add", produces = "text/html;charset=utf-8")
    public String showForm(Model model) {
        model.addAttribute("form", new Event());
        return "events/form";
    }

    @PostMapping(value = "/add", produces = "text/html;charset=utf-8")
    public String newForm(@ModelAttribute("form") @Valid Event form, BindingResult result, @RequestParam Long GroupId) {
        if (result.hasErrors()) {
            return "events/form";
        }
        Group group = groupRepository.findOne(GroupId);
        form.setGroup(group);
        eventRepository.save(form);


        return "redirect:/main/allgroups";
    }


}
