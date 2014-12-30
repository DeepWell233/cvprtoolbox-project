function O = block_dct2(I, m)
% Block Based 2-D DCT.
%
%  [O] = block_dct2(I, m)
%
% Input arguments ([]s are optional):
%  I   (matrix) of size NxN. Input Image
%  [m] (scalar): block size. Default is 8.
%
% Output arguments ([]s are optional):
%  O   (matrix) of size NxN. Output Image
%
% Future Work: 
%  Currently N must be a multiple of block size m. 
%  Support NxM image
%
% see also: blkproc, dct2
%
% Author: Naotoshi Seo <sonots(at)umd.edu>
% Date  : March 2007
if nargin < 2,
    m = 8;
end
N = size(I, 1);
for i=0:(floor(N/m)-1)
    si = i*m+1;
    for j=0:(floor(N/m)-1)
        sj = j*m+1;
        O(si:(si+m-1), sj:(sj+m-1)) = dct2(I(si:(si+m-1), sj:(sj+m-1)));
    end
end
