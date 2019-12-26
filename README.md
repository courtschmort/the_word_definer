# The Word Definer

#### Routing with Ruby Independent Project for [Epicodus](https://www.epicodus.com/); December 26, 2019

#### By Courtney Schild

## Description

The following prompt outlines the project requirements:

> Make an application that contains a `Word` class. The homepage of the app should list all words. When a word is clicked, it should lead to a page with the word's definitions. Children should be able to add a word, and when viewing a word, be able to add, update or delete one or more definitions. This week you should deploy your application to Heroku so the kids can try it out!

## Specs

<!-- This is another way to write out specs:
 * Spec:
  * Input:
  * Output:  -->

#### CRUD

| HTTP verb | Route | CRUD Action | Description | URL |
| ----------- | ----------- | ----------- | ----------- | ----------- |
| GET | /words | READ | Get a list of words. |  |
| GET | /words/:id | READ | Look at the detail page for a single word. |  |
| GET | /words/new | READ | Go to the form page for adding a new word to the list. |  |
| GET | /words/:id/edit | READ | Go to the form page for editing a word. |  |
| POST | /words | CREATE | Add a new word to the list of words. |  |
| PATCH | /words/:id | UPDATE | Update a single word. |  |
| PATCH | /words/:id | DELETE | Delete an album (or albums) from the list. |  |

## Setup/Installation Requirements

This application is deployed to Heroku and may be viewed by clicking the link below or edited by following the instructions below to clone or download the repository to your computer.

**Click [here]() to open the Heroku application.**

#### Cloning

###### From GitHub
1. Click the **Clone or download** dropdown button.
2. Within the dropdown, click the **Download ZIP** button.

###### From the command-line interface (CLI)
1. To change the directory, type `cd Desktop` after the command prompt.
2. To clone the repository to your Desktop, type `git clone https://github.com/courtschmort/the_word_definer.git` after the command prompt. (This web URL can be located within the **Clone or download** dropdown button in GitHub.)

For more information about cloning repositories available on GitHub, click [here](https://help.github.com/en/articles/which-remote-url-should-i-use).

#### Ruby

3. Complete the following lessons at [learnhowtoprogram.com](https://www.learnhowtoprogram.com/) to install Ruby, etc.:
  * [Installing Ruby](https://www.learnhowtoprogram.com/ruby/getting-started-with-ruby/installing-ruby)
  * [Managing Ruby Versions](https://www.learnhowtoprogram.com/ruby-and-rails/getting-started-with-ruby/managing-ruby-versions-409a3b5b-7113-4c4e-aead-c97ce8231197)
  * [Using Ruby Gems](https://www.learnhowtoprogram.com/ruby-and-rails/basic-ruby/using-ruby-gems)
  * [Using RSpec](https://www.learnhowtoprogram.com/ruby-and-rails/bdd-with-ruby/using-rspec)
4. To bundle gems, type `bundle` after the command prompt.
5. To run the application, type `ruby app.rb` after the command prompt (**control-C** to exit).

#### Heroku

6. TBD

## Known Bugs

There are no known bugs at this time.

## Support and Contact Details

If you have any questions, please email me at courtneyschild@gmail.com.

Find me on LinkedIn and GitHub:

* [Connect with me](https://www.linkedin.com/in/courtneyschild/) on LinkedIn
* [Follow me](https://github.com/courtschmort) or [watch this repository](https://github.com/courtschmort/the_word_definer.git) on GitHub

<!-- ## Product Roadmap

In the future, I plan to include the following key features:
* Key feature 1
* Key feature 2
* Key feature 3 -->

## Technologies Used

* Markdown
* Ruby
* Atom
* Heroku

## License

This website is licensed under the GNU General Public License v3.0 [gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).

Copyright &copy; 2019 **Courtney Schild**
