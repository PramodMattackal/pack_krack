package com.packkrak.app.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.packkrak.app.dao.DynamoDBHelper;
import com.packkrak.app.model.User;

@Controller
public class PackKrakController {

	DynamoDBHelper dynamoDbHelper = new DynamoDBHelper();

	@RequestMapping("/")
	public String homepage() {
		return "/index.html";
	}

	@RequestMapping(value = "/createUser", method = RequestMethod.POST, consumes = "application/json", produces = "application/json")
	public @ResponseBody User createUser(@RequestBody User user) {

		if (user.getUserName() == null) {
			return null;
		}

		System.out.println("In Controller");

		System.out.println("UserName: " + user.getUserName());
		System.out.println("Password: " + user.getPassword());

		dynamoDbHelper.createUser(user);

		return user;
	}

}
