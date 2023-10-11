def perform_arithmetic_operation(operation, num1, num2):
    if operation == 'add':
        return num1 + num2
    elif operation == 'subtract':
        return num1 - num2
    elif operation == 'multiply':
        return num1 * num2
    elif operation == 'divide':
        if num2 == 0:
            raise ZeroDivisionError("Cannot divide by zero")
        return num1 / num2
    else:
        raise ValueError("Invalid operation specified")
    
    
    def test_perform_arithmetic_operation():
        assert perform_arithmetic_operation('add', 5, 3) == 8
        assert perform_arithmetic_operation('subtract', 5, 3) == 2
        assert perform_arithmetic_operation('multiply', 5, 3) == 15
        assert perform_arithmetic_operation('divide', 6, 3) == 2
        with pytest.raises(ZeroDivisionError):
            perform_arithmetic_operation('divide', 5, 0)
        assert perform_arithmetic_operation('add', -5, 3) == -2
        assert perform_arithmetic_operation('subtract', -5, 3) == -8
        assert perform_arithmetic_operation('multiply', -5, 3) == -15
        assert perform_arithmetic_operation('divide', -6, 3) == -2
        with pytest.raises(ValueError):
            perform_arithmetic_operation('invalid', 5, 3)
    
    test_perform_arithmetic_operation()
