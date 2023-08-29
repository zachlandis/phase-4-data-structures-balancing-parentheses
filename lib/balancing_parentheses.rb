require_relative './stack'

def balancing_parentheses(str)
    stack = Stack.new

    str.chars.each do |c|
        if stack.peek == '(' && c == ')'
            stack.pop
        else
            stack.push(c)
        end
    end
    stack.size
end
