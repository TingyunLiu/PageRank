clear all;
close all;

load ('sample_yahoo.mat');

% calculate the PageRank
[p,it] = PageRank(G,0.75);

% obtain the final ranking order and list the top ten results.
[y,I] = sort(p, 'descend');
for n = 1:min(length(I),10)
    disp([num2str(n) ': ' U{I(n)}]);
end

% Output:
% 1: https://ca.search.yahoo.com/search
% 2: https://ca.weather.yahoo.com
% 3: https://ca.mail.yahoo.com
% 4: https://ca.yahoo.com
% 5: https://s.yimg.com
% 6: https://ca.sports.yahoo.com
% 7: https://info.yahoo.com/privacy/ca/yahoo
% 8: https://info.yahoo.com/legal/ca/yahoo/utos/utos-ca01.html
% 9: https://www.flickr.com
% 10: https://geo.yahoo.com/t
