Feature: Patient receives a medical diagnosis 

Background: Authentication
Given that I am a patient
And I have logged in to the system
And I have created a profile

Scenario: Patient successfully receives a medical diagnosis from the AI system
Given that I have sent my request for medical diagnosis
And I had selected to ask the AI system
And I have provided sufficient information about my condition
When I submit my request
Then I should instantly receive the medical diagnosis
And I should be given the option to ask for a second opinion

Scenario: Patient successfully receives a medical diagnosis from a doctor
Given that I have sent my request for medical diagnosis
And I had selected to ask a doctor
And I have provided sufficient information about my condition
When I submit my request
Then I should be informed that my request has been sent to the doctor
When the doctor responds
Then I should receive a notification
And I should be taken to the "My Requests" page
When I click on my request
Then I should be able to view the diagnosis
And I should be given the option to ask for a second opinion

Scenario: Patient doesn't receive a medical diagnosis
Given that I have filled my request for medical diagnosis
And I have provided insufficient information about my condition
When I submit my request
Then I should receive an error message
And I should be prompted to provide more information about my condition