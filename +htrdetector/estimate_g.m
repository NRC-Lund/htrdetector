function g = estimate_g(y_in)
%ESTIMATE_G Estimate Earth gravity
%
% SYNTAX:
%   g = estimate_g(y_in)
%
% INPUTS:
%   y_in  - Accelerometer data (dim1=sample, dim2=dimension, double precision).
%
% OUTPUTS:
%   g     - Earth gravity in accelerometer units.

% Check input:
narginchk(1,1)
validateattributes(y_in, 'double', {'2d'})
if size(y_in,2)>3
    error('The input data should not have more than 3 columns.')
end

% Estimate g:
g = norm(nanmedian(y_in));