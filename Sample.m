clear all;
close all;

G = sparse(7,7);

% initialize the adjacency matrix G
G(2,1) = 1;
G(3,1) = 1;

G(3,2) = 1;
G(4,2) = 1;

G(5,3) = 1;

G(1,4) = 1;

G(4,5) = 1;
G(6,5) = 1;

G(2,6) = 1;
G(4,6) = 1;
G(7,6) = 1;

G(2,7) = 1;
G(3,7) = 1;  
G(6,7) = 1;

% calculate the PageRank
[p,it] = PageRank(G,0.75);

subplot(2,1,1), spy(G);
title('Sparisity');
xlabel('Pages');
ylabel('Pages');

subplot(2,1,2), bar(p);
title('PageRank');
xlabel('Pages');
ylabel('Rank (Importance)');


