%{ 
mwave - A water wave and wave energy converter computation package 
Copyright (C) 2014  Cameron McNatt

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Contributors:
    C. McNatt
%}
classdef SurgeFunc < IMotionFunc
    % Defines motions for modes of motion
    
    properties (Dependent)
        MotionIn;
    end
    
    methods
        function [surge] = SurgeFunc(varargin)
            surge.initCg(varargin{:});
            surge.isym = 1;
            surge.isGen = false;
        end
        
        function [f] = Evaluate(surge, pos)
            if (surge.checkEvalPoint(pos))
                f = [1 0 0];
            else
                f = [0 0 0];
            end
        end
        
        function [div] = Divergence(surge, pos)
            div = 0;
        end
        
        function [gf] = GravityForce(surge, pos)
            gf = 0;
        end
         
        function [in] = get.MotionIn(surge)
            in = [1 0 0];
        end
     end
end