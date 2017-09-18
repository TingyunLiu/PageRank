function [p,it] = PageRank(G,alpha)
% The inputs are the (sparse) adjacency matrix G, representing the 
%   directed graph of the network, and the weight alpha. 
%   (The adjacency matrix is defined such that G(i,j) = 1 if there is 
%   a link from page j pointing to page i, otherwise G(i,j) = 0.) The
%   output is the vector p of pagerank scores, and it is the number 
%   of iterations that were required for the computation.
%   Use a tolerance value of 10^-7.

    [m,R] = size(G);
    
    G = sparse(G);
    
    it = 0;
    e = ones(R,1);
    p = e/R;
    prob = sparse(G*diag(1./sum(G(:,1:R))));
    d = all(prob == 0);
    % Q = P + (1/R).*e*d;
    % M = alpha * Q + (1 - alpha)/R * ones(R,R);
    
    p_prev = zeros(R,1);
    while (max(abs(p - p_prev)) >= 10^(-7))
        p_prev = p;
        p = alpha*(prob*p_prev + e.*(d'.*p_prev/R)) + (1 - alpha)*e/R;
        it = it+1;
    end    

end


