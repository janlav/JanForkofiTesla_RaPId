function [ sol, other ] = cg_algo(rapidSettings)
%CG_ALGO applying fminunc to compute the minimum of the objective function
%defined by the parameter identification problem settings must contain the
%fields:
%       - settings.p0, initial guess for the vector of parameters 
%       - settings.cgSettings, string containing a command providing the
%       optimset for the matlab function fminunc, can please refer to the
%       doc fminunc

%% <Rapid Parameter Identification is a toolbox for automated parameter identification>
%
% Copyright 2015 Luigi Vanfretti, Achour Amazouz, Maxime Baudette, 
% Tetiana Bogodorova, Jan Lavenius, Tin Rabuzin, Giuseppe Laera, 
% Francisco Gomez-Lopez
% 
% The authors can be contacted by email: luigiv at kth dot se
% 
% This file is part of Rapid Parameter Identification ("RaPId") .
% 
% RaPId is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% RaPId is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
% 
% You should have received a copy of the GNU Lesser General Public License
% along with RaPId.  If not, see <http://www.gnu.org/licenses/>.

options = eval(rapidSettings.cgSettings);
sol = fminunc(@func,rapidSettings.experimentSettings.p_0,options);
other = [];
end