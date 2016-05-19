package com.packkrak.app.dao;

import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.profile.ProfileCredentialsProvider;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDBClient;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.packkrak.app.model.User;

public class DynamoDBHelper {

	BasicAWSCredentials credentials = new BasicAWSCredentials("AKIAJRMCNZBPAUHIFTRA", "uoE0dhU9wQctKfnvB6OceyeIQeEG5BKOoS1Fzc8Y");
	AmazonDynamoDBClient client = new AmazonDynamoDBClient(credentials);
	DynamoDBMapper mapper = new DynamoDBMapper(client);

	public void createUser(User user) {

		System.out.println("In the save method");

		try {
			mapper.save(user);
		} catch (Exception exception) {
			exception.printStackTrace();
		}
	}

}
