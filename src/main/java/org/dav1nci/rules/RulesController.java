package org.dav1nci.rules;

import com.google.gson.Gson;
import org.dav1nci.dbservice.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.security.Principal;
import java.util.List;

/**
 * Created by dav1nci on 31.10.15.
 */
@Controller
public class RulesController
{
    @Autowired
    private HomeService homeService;
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/rules")
    public String rules(Model model, Principal principal)
    {
     /*   List<HomeEntity> content = homeService.getTours(1,3);
        model.addAttribute("itemsOnPage", 3);
        model.addAttribute("totalItems", content.size());*/
     /*   model.addAttribute("content", content);
        model.addAttribute("row", new RulesEntity());*/


        model.addAttribute("content", homeService.listContact("RulesEntity"));
        model.addAttribute("row", new RulesEntity());
        if (principal != null)
            model.addAttribute("vote", userService.getUser(principal.getName()));
        return "rules/rules";
    }

    @RequestMapping(value = "/vote")
    public ResponseEntity<String> stand(@RequestBody Integer vote, Principal principal)
    {
        System.out.println("From VOte");
        System.out.println(vote);
        UserEntity user = userService.getUser(principal.getName());
        user.setVoteId(vote);
        userService.updateUser(user);
        return new ResponseEntity<String>("ok" , HttpStatus.OK);
    }
}
