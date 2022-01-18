Feature: Delete

    Scenario: User deletes a todo
        Given the todo list contains todo with name "endToEndTodo"
        When the user taps todo with name "endToEndTodo"
        And the user taps delete
        Then the todo list doesn't contain todo with name "endToEndTodo"