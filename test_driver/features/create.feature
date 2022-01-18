Feature: Create

    Scenario: User creates todo
        Given the todo list has no "endToEndTodo"
        When the user creates a todo with name "endToEndTodo"
        Then todo with name "endToEndTodo" is in list

