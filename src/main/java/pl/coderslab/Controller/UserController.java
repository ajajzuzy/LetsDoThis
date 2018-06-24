package pl.coderslab.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.enity.City;
import pl.coderslab.enity.User;
import pl.coderslab.repository.CityRepository;
import pl.coderslab.repository.UserRepository;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Collection;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    CityRepository cityRepository;

    @GetMapping("/register")
    public String showRegister(Model model) {
        User user = new User();
        model.addAttribute("user", user);
        return "user/register";
    }

    @PostMapping("register")
    public String showRegister(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "user/register";
        }


        User existingUser = userRepository.findFirstByEmail(user.getEmail());
        if (existingUser != null) {
            FieldError error = new FieldError("user", "email", "Email musi być unikalny");
            result.addError(error);
            return "user/register";
        }
        userRepository.save(user);
        return "redirect:/";
    }

    @ModelAttribute("cites")
    public Collection<City> allCites() {
        return cityRepository.findAll();
    }

    @GetMapping("/login")
    public String showLogin(Model model) {
        model.addAttribute("user", new User());
        return "user/login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute("user") User user, Model model, HttpSession session) {
        User existingUser = userRepository.findFirstByEmail(user.getEmail());
        if (existingUser != null && existingUser.getEmail().equals(user.getEmail())
                && existingUser.getPassword().equals(user.getPassword())) {
            session.setAttribute("email", existingUser.getEmail());
            session.setAttribute("user_id", existingUser.getId());
        } else {
            model.addAttribute("loginError", "Nieprawidłowy login lub hasło");
            return "user/login";
        }
        return "redirect:/main";
    }

    @RequestMapping(path = "/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("email");
        return "redirect:/";
    }

    //-------------------------------------------



}
