Feature: Login.
    As a User
    In order to login
    I want to use my facebook or my system register
    
    @javascript  
    Scenario: Successful login using system register
        Given I am not authenticated
        When I fill in "session[user]" with "user"
        And I fill in "session[password]" with "senha"
        And I press the "Fazer Login" button
        Then I should see a text "Usuário, first_name logado com sucesso!"
        Then be redirected to the index page
    
    @javascript
    Scenario: Unsuccessful login using system register
        Given I am not authenticated
        When I fill in "session[user]" with "user"
        And I fill in "session[password]" with "senha"
        And I press the "Fazer Login" button
        Then I should see a text "Usuário e/ou Senha inválidos!"

    @javascript
    @omniauth_test_success
    Scenario: A user successfully signs in with Facebook
        Given I am not authenticated
        When I press the "Facebook" button
        Then I should be redirected to "facebook" login page
        And be redirected to the index page
    @javascript
    @omniauth_test_failure       
    Scenario: A user unsuccessfully signs in with Facebook
        Given I am not authenticated
        When I press the "Facebook" button
        Then I should be redirected to "facebook" login page
        And be redirected to login page