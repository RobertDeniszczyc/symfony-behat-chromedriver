Symfony with Behat and ChromeDriver support
========================

Welcome to Symfony with Behat and ChromeDriver support - a fully-functional Symfony
application that you can use as the skeleton for your new applications.

For details on how to download and get started with Symfony, see the
[Installation][1] chapter of the Symfony Documentation.

This is the [Symfony Standard Edition][6] but with added support for running [Behat][2] tests also with the capability to run these tests in Google Chrome via [Mink][3], [ChromeDriver][4], and [Selenium][5].

---

## Prerequisites
- You have Selenium on your machine.
- You have ChromeDriver on your machine.
- You have [composer][7] on your machine.
- For the other extensions you should be able to install them by running `composer install` or `composer update` in this repo.
- You have [Java][8] on your machine

## Get Started
1. Git clone this repo and run `composer update` to get the latest version of the packages. Once you have Symfony installed, open a terminal window and run `php bin/console server:run`. This starts the application running at 127.0.0.1:8000 unless you have specified otherwise. If you navigate to 127.0.0.1:8000 in a browser you should see the Symfony welcome page.
2. Open another terminal window and here run `java -jar  -Dwebdriver.chrome.driver="<PATH-TO-CHROMEDRIVER.EXE-HERE" selenium-server-standalone-X.X.X.jar` to start the Selenium server with ChromeDriver. Update the path and version number as applicable.
3. Open another terminal window and run `vendor/bin/behat` to kick off the Behat tests. You should see Google Chrome launch a new window, navigate to 127.0.0.1:8000 and then close. In this terminal window you should see the tests have passed for example:

```
$ vendor/bin/behat
Feature:
  In order to prove that Behat works as intended
  We want to check for some content on the welcome page

  @javascript
  Scenario: Check symfony runs
    When I am on the homepage
    Then I should see "Your application is now ready"

1 scenario (1 passed)
2 steps (2 passed)
0m2.75s (10.32Mb)

```



[1]: https://symfony.com/doc/3.2/setup.html
[2]: http://behat.org
[3]: https://github.com/Behat/MinkExtension
[4]: https://sites.google.com/a/chromium.org/chromedriver/
[5]: http://www.seleniumhq.org/
[6]: http://symfony.com/
[7]: https://getcomposer.org/
[8]: https://java.com/en/download/