= Question 3 


== 3b 

base case $n = 1$
$
1^1 >= (1 + 1)^(1-1) \
1 >= 2^0 \
1 >= 1
$
base case proven

\

Assume for induction hypothesis
$
m^m >= (m+1)^(m-1)
$
for $2 <= m <= n$

\

and we want to prove $n+1$

$
(n+1)^(n+1) >= (n + 1 + 1)^(n+1 -1) \ 
(n+1)^(n+1) >= (n + 2)^n  \
(n+1)^n (n+1) >= (n+2)^n  \ 
(n+1)^n >= ((n+2)^n / (n+1))   \ 
(n+1)^n/(n+2)^n >= 1/(n+1)   \ 

((n+1)/(n+2))^n >= 1/(n+1)   \ 
$

from the inductive hypothesis 

$
n^n >= (n+1)^(n-1) \ 

n^n >= ((n+1)^n)/(n+1) \ 


(n/(n+1))^n >= 1/(n+1) \ 

$

// THOUGHT 1 : LOG route
// $
// (n+1)^(n+1) >= (n + 1 + 1)^(n+1 -1) \ 
// (n+1)^(n+1) >= (n + 2)^n  \
// (n+1)^n (n+1) >= (n+2)^n  \ 
// (n+1)^n >= ((n+2)^n / (n+1))   \ 
//
// log((n + 1)^n) >= log((n+2)^n / (n+1)) \ 
//
// log((n + 1)^n) >= log((n+2)^n) - log(n+1) \ 
//
// n dot log((n + 1)) >= n dot log(n+2) - log(n+1) \ 
// $
//
//
