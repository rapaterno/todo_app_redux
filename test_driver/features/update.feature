Feature: Update

    Scenario: User updates name of todo
        Given the todo list contains todo with name "endToEndTodo"
        When the user taps todo with name "endToEndTodo"
        And rename todo to "endToEndTodoEdit"
        Then the todo list contains todo with name "endToEndTodoEdit"

    Scenario: User updates status of todo
        Given the todo list contains todo with name "endToEndTodo"
        And the todo tile of "endToEndTodo" is incomplete
        When the user taps checkbox of todo "endToEndTodo"
        Then the todo tile of "endToEndTodo" is complete