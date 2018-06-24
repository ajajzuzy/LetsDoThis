package pl.coderslab.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.enity.City;
import pl.coderslab.enity.Group;
import pl.coderslab.repository.CityRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/city")
public class CityController {

    @Autowired
    CityRepository cityRepository;

    @RequestMapping(value = "/add", produces = "text/html;charset=utf-8")
    public String showForm(Model model) {
        model.addAttribute("form", new City());
        return "allcities/form";
    }


    @PostMapping(value = "/add", produces = "text/html;charset=utf-8")
    public String newForm(@ModelAttribute("form") @Valid City form, BindingResult result) {
        if (result.hasErrors()) {
            return "allcities/form";
        }
        cityRepository.save(form);

        return "redirect:/";
    }
}
