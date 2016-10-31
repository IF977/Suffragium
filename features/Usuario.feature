Feature: Login no sistema.
    As a User
    In order to login
    I want to use my system register
    
    @javascript  
    Scenario: Successful login using system register
        Given I am not authenticated
        When I fill in "session[usuario]" with "usuario"
        And I fill in "session[password]" with "senha"
        And I press the "Fazer Login" button
        Then I should see a text "Usuário, first_name logado com sucesso!"
        Then be redirected to the index page
    
    @javascript
    Scenario: Unsuccessful login using system register
        Given I am not authenticated
        When I fill in "session[usuario]" with "usuario"
        And I fill in "session[password]" with "senha"
        And I press the "Fazer Login" button
        Then I should see a text "Usuário e/ou Senha inválidos!"
