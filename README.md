# BEM2 Mid Mod

You are going to build an application that will store information on Books and Authors. The relationship between Books and Authors is many-to-many. An Author can write many Books, and a Book can be written by many Authors

## Requirements

* all code should be 100% tested at both the feature and model levels
* you should use a TDD workflow
* you should also follow all MVC conventions.

## Instructions

* Fork this repository
* Clone your fork
* Complete the Prework below
* Push your solution to your forked repository before your scheduled assessment time

## Prework

Complete the following tasks before the assessment.

### Database Setup

First, create the many to many relationship between Authors and Books
  * Authors should have a name
  * Books should have a title, number of pages, and publication year

### User Stories

Once you have completed the database setup, complete the following user stories:

**User Story 1: Book Index Page**
```
As a user,
When I visit '/books'
Then I see each book in the system including the book's:
  - title
  - number of pages
  - publication year
  - the name of each author that wrote the book
```

**User Story 2: Author Show Page**
```
As a user,
When I visit the Book Index Page,
  Then I see each author's name is a link
When I click the link
  Then I am taken to an Author Show Page where I see the author with that id including the author's:
  - name
  - the title of each book they have written
  - the average number of pages for all of their books
```

## Rubric

| | Rails Syntax | MVC | ActiveRecord | Testing and Debugging |
| -- | -- | -- | -- | -- |
| 4 | Students effectively use Rails methods or strategies not discussed in class, and can effectively defend their decision to use those tools. | Student strictly adheres to MVC, and can defend decisions of where functionality lives. | Highly effective and efficient use of ActiveRecord beyond what we've taught in class | Prework tests are extremely well organized and nested. Student demonstrates excellent TDD during paired assessment. |
| 3 | Student effectively and independently uses appropriate Rails syntax to complete the user stories | Student adheres to the principles of MVC, with only one infraction. | Students appropriately choose class vs. instance methods. Students can CRUD resources using built in ActiveRecord methods and ActiveRecord associations. | Tests capture the behavior described in the user stories. Student demonstrates use of TDD, but may be prompted by the instructor once or twice. |
| 2 | Student uses appropriate Rails syntax with instructor prompting, or does not complete the paired user story | Student does not adhere to the principles of MVC, demonstrated by up to 3 infractions. Student is able to describe the principles of MVC. | Student needs  prompting from instructor in order to use ActiveRecord to CRUD resources, or student makes an incorrect, or inappropriate choice of using a class or instance method. | Tests do not capture the behavior described in the user stories, and/or the student does not demonstrate consistent use of TDD |
| 1 | Student fails to complete one or both of the prework user stories | Student has more than 3 infractions of MVC and/or can not describe the principle of MVC. | Student is unable to CRUD resources using ActiveRecord | Student is unable to write an effective test without significant instructor guidance. |
