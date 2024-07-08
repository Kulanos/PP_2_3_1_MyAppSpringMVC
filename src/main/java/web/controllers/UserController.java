package web.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import web.model.User;
import web.service.UserService;
import web.service.UserServiceImp;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

@Controller
public class UserController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/")
    public String allUsers(Model model) {
        logger.debug("Entering allUsers() method");
        List<User> users = userService.allUsers();
        model.addAttribute("userList", users);
        logger.debug("Exiting allUsers() method");
        return "users";
    }

    @GetMapping("/edit/{id}")
    public String editPage(@PathVariable("id") Long id, Model model) {
        logger.debug("Entering editPage() method with id: {}", id);
        User user = userService.getById(id);
        model.addAttribute("user", user);
        logger.debug("Exiting editPage() method with user: {}", user);
        return "editPage";
    }

    @PostMapping("/edit")
    public String editUser(@ModelAttribute("user") User user) {
        logger.debug("Entering editUser() method with user: {}", user);
        userService.edit(user);
        logger.debug("Exiting editUser() method");
        return "redirect:/";
    }

    @GetMapping("/add")
    public String addPage(Model model) {
        logger.debug("Entering addPage() method");
        model.addAttribute("user", new User());
        logger.debug("Exiting addPage() method");
        return "addPage";
    }

    @PostMapping("/add")
    public String addUser(@ModelAttribute("user") User user) {
        logger.debug("Entering addUser() method with user: {}", user);
        userService.add(user);
        logger.debug("Exiting addUser() method");
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        logger.debug("Entering deleteUser() method with id: {}", id);
        User user = userService.getById(id);
        userService.delete(user);
        logger.debug("Exiting deleteUser() method with user: {}", user);
        return "redirect:/";
    }
}
