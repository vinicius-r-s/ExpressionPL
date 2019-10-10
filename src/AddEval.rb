require './src/Eval'
require './src/Add'
module Add_Eval
    include Core_Add
    class Add < C_Add
        include Eval::Expression
        def initialize(left, right)
            @left = left
            @right = right
            def eval
                return @left.eval + @right.eval
            end
            
        end
    end
end
