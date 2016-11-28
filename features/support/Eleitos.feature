Feature: elected candidates
As a System Voter
I want to check the elected candidates.
To monitor candidates more closely in their mandate.

@javascript
Scenario: See elected candidates
Given I on my profile page.
When I click on the link "Elected Candidates"
Then I should see all the candidates elected

    