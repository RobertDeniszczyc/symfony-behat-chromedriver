Feature:
In order to prove that Behat works as intended
We want to check for some content on the welcome page

@javascript
Scenario: Check symfony runs
When I am on the homepage
Then I should see "Your application is now ready"