Feature: Candidate's Registering.
    As a elector
    In order to meet the candidates
    I want to see all candidates are eligible
    
    @javascript  
    Scenario: Consulting candidates that are eligible
        Given I am authenticated
        When I press "Consultar Candidatos"
        Then I should see all the candidates eligible
    #teste