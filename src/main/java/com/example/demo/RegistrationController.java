package com.example.demo;

import com.example.demo.dao.UserRepo;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class RegistrationController {

    @Autowired
    UserRepo repo;

    public boolean authenticateUser(String email, String password) {
        UserRegistration user = repo.findByEmail(email);
        // Check if the user exists and if the password matches
        if (user != null && user.getPassword().equals(password)) {
            return true; // Authentication successful
        } else {
            return false; // Authentication failed
        }
    }

    @RequestMapping("/")
    public String signin(){
        return "sign-in";
    }

    @RequestMapping("/check-details")
    public String login(UserRegistration test){
        String email = test.getEmail();
        String password = test.getPassword();
        boolean check = authenticateUser(email, password);

        if (check == true){
            System.out.println("Successful");
            return "adminlist";
        }
        else {
            System.out.println("failed login");
            return "sign-in";
        }
    }

    @RequestMapping("/signup")
    public String register(){
        return "registration";
    }
//    @RequestMapping("/userDetails")
//    public ModelAndView userInfo(UserRegistration reg){
////        System.out.println("I m loading details." + reg.getNamesurname());
//
//        ModelMap model = new ModelMap();
//        model.addAttribute("name", reg.getNamesurname());
//        model.addAttribute("email", reg.getEmail());
//        model.addAttribute("password", reg.getPassword());
//        model.addAttribute("terms", reg.getTerms());
//
//        ModelAndView mv = new ModelAndView("user-details");
//        mv.addObject("regObj", model);
//        return mv;
//    }

    @RequestMapping("/userDetails")
    public String userInfo(UserRegistration reg){
        repo.save(reg);
        return "sign-in";
    }

    @Transactional
    @RequestMapping("/deleteByName")
    public String deleteByName(String name) {
        repo.deleteBynamesurname(name);
        return "adminlist";
    }

    @Transactional
    @RequestMapping("/updateByName")
    public String updateByName(){
        return "admin-edit";
//            List<UserRegistration> registrations = repo.findBynamesurname(name);
//            if (!registrations.isEmpty()) {
//                UserRegistration reg = registrations.get(0); // Updating the first match
//                reg.setNamesurname("UpdatedName");
//                repo.save(reg);
//            }
//            return "adminlist";
        }
    @RequestMapping("/updatethis")
    public String updatedByName(UserRegistration reg1){
        List<UserRegistration> registrations = repo.findBynamesurname(reg1.getNamesurname());
        if (!(registrations.isEmpty())){
            UserRegistration reg = registrations.get(0); // Updating the first match
            reg.setEmail(reg1.getEmail());
            reg.setPassword(reg1.getPassword());
            reg.setTerms(reg1.getTerms());
            repo.save(reg);
        }
        else {
            repo.save(reg1);
        }
        return "adminlist";
    }


    public ModelAndView SelectRecord(UserRegistration reg){
        ModelMap model = new ModelMap();
        model.put("name", reg.getNamesurname());
        model.put("email", reg.getEmail());
        model.put("password", reg.getPassword());
        model.put("terms", reg.getTerms());

        ModelAndView mv = new ModelAndView("user-details");
        mv.addObject("regObj", model);
        return mv;
    }

//    @GetMapping("/user-details")
//    public List<UserRegistration> getUserAllDetails() {
//        System.out.println(repo.findAll());
//        return repo.findAll(); // Assuming repo is your UserRepository
//    }

    @GetMapping("/adminlist")
    public List<UserRegistration> displayUsers() {
//        System.out.println(repo.findAll());
        return repo.findAll(); // Assuming repo is your UserRepository
    }


//    @RequestMapping("/operation")
//    public ModelAndView operation(Long UId, String ddlFlag) {
//        int limit = (int) repo.count();
//
//        List<UserRegistration> userList = (List<UserRegistration>) repo.findAll(); // Fetch all user registrations
////        return SelectRecordArr(userList, limit);
//        System.out.println((userList));
//    }

//    public ModelAndView SelectRecordArr(List<UserRegistration> reg, int limit){
//        ModelAndView mv = new ModelAndView("user-details");
//        ModelMap model[] = new ModelMap[limit];
//        for (int i =1; i<limit; i++) {
//            model[i].put("name", reg.get(i).getNamesurname());
//            model[i].put("email", reg.get(i).getEmail());
//            model[i].put("password", reg.get(i).getPassword());
//            model[i].put("terms", reg.get(i).getTerms());
//            mv.addObject("regObj" + i, model[i]);
//        }
//        return mv;
//    }

}
