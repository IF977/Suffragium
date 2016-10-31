Feature: Proposals Feedback
As a candidate
I want to see my proposals effects
In order to see the acceptance of my ideas.

Background: Given I am on my "Formulario de propostas"
  	    
@javascript
Scenario: To see proposal´s feedback.
	When I see “Formulario de propostas”
	And I see the evaluation´s elector of my proposals
	And I see the feedback of my proposals
	Then I should realize my proposals´s acceptance
	