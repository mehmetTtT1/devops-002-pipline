package Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDateTime;

@RestController
@RequestMapping
public class DevopsController {


    @GetMapping
    public  String devopsHello(){

        String s = "Devops Hello" + LocalDateTime.now();
        return s;
    }

    @GetMapping("/info")
    public  String info(){

        String s = "Devops İnfo" + LocalDateTime.now();
        return s;
    }


}
