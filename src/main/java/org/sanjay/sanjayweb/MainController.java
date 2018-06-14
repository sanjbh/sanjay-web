package org.sanjay.sanjayweb;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

@Controller
public class MainController {
    @RequestMapping("/")
    public String handleRootRequest(ModelMap model) {
        RestTemplate restTemplate = new RestTemplate();

	String hostName = "microservice-demo:8080";
	//String hostName = "microservice-demo-test.127.0.0.1.nip.io";
        String cameRestEndpoint = "http://" + hostName + "/camel/test";
        CamelPOJO camelPOJO = restTemplate.getForObject(cameRestEndpoint, CamelPOJO.class);

        model.put("status", camelPOJO.getStatus());
        model.put("timeStamp", camelPOJO.getTimeStamp());
        model.put("version", camelPOJO.getVersion());

        return "main";
    }
}
