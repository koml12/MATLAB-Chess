classdef Knight < GamePiece
    properties
        position;
    end
    
    methods
        function knight = Knight(team, position)
            knight = knight@GamePiece(team);
            knight.position = position;
        end 
        function valid = isValidMove(knight, newPosition
        x = newPosition(1);
            y = newPosition(2);
            initX = knight.position(1);
            initY = knight.position(2);
            deltaX = x - initX;
            deltaY = y - initY;
            
            if deltaY == 0 && deltaX == 0
                valid = 0;
            elseif abs(deltaY) == 2 && abs(deltaX) == 1
                valid = 1;
            elseif abs(deltaX) == 2 && abs(deltaY) == 1
                valid = 1;
            else
                valid = 0
            end
        end
    end
end
