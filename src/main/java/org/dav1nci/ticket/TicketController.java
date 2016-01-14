package org.dav1nci.ticket;

import org.dav1nci.dbservice.HomeService;
import org.dav1nci.dbservice.RoleEntity;
import org.dav1nci.dbservice.UserEntity;
import org.dav1nci.dbservice.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
/**
 * Created by marta on 13.01.16.
 */

@Controller
@Configuration
public class TicketController {

   @Autowired
    private UserService userService;

    @RequestMapping(value = "/ticket", method = RequestMethod.GET)
    public String signUpForm(Model model)
    {
        model.addAttribute("ticket", new Ticket());
        return "ticket/ticket";
    }

    @RequestMapping(value = "/ticket", method = RequestMethod.POST)
    public String signUpFormSubmit(@ModelAttribute("ticket") Ticket ticket,  Model model)
    {
        userService.addTicket(ticket);
        return "ticket/ticketsuccess";
    }
}
