Feature: Patient asks for a second opinion.

Background: Successful diagnosis of the patient
Given that I am a patient 
And I have successfully received a medical diagnosis

Scenario: The patient asks for a second opinion
Given that I am currently on that particular request's page
Then I should be able to request a second opinion
When I click on the "Ask for a second opinion?" button
Then the system should automatically fill a new "Ask a doctor" request form with the same information as the previous request
When I am on the "Ask a doctor" page
Then I should be able to pick a new doctor to request a second opinion from
And after I submit the second form the "Ask for a second opinion?" button should be grayed out

Scenario: The patient can't ask for a second opinion
Given that I am currently on that particular request's page
And I have already requested a second opinion
When I see the "Ask for a second opinion?" button 
Then it should be grayed out
And I should not be able to click on it
