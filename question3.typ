= Question 3 

== 3a)

let $n_0 = 1$

let $c = 1$

$
f(n) &= ln(n!) \
& = ln(n dot (n-1)!) \
& = ln(n) + ln((n - 1)!) \ 
& = ln(n) + ln(n-1) + ... + ln(1) "there are" n "terms" \
& <= ln(n) + ln(n) + ... + ln(n) "since" ln(n) "is an increasing function"\ 
& = n dot ln(n) \ 
& <= c dot n ln(n) 
$ 

let $g(n) = n ln(n)$

therefore $exists c in RR, exists n_0 in RR, forall n >= n_0, f(n) <= c dot g(n)$
which gives $ln(n!) in O(n ln n)$ 

== 3b 
proving the hint first: $forall n in NN, n^n >= (n+1)^(n-1)$

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
for $1 <= m <= n$

\

and we want to prove $n+1$

$
$

from the inductive hypothesis 

$
n^n &>= (n+1)^(n-1) \ 

n^n &>= ((n+1)^n)/(n+1) \ 

(n^n)/(n+1)^n &>= 1/(n+1) \ 

(n/(n+1))^n &>= 1/(n+1) \ 

((n+1)/(n+2))^n > (n/(n+1))^n &>= 1/(n+1) "(*)"\ 

((n+1)/(n+2))^n &>= 1/(n+1)   \ 
(n+1)^n/(n+2)^n &>= 1/(n+1)   \ 
(n+1)^n &>= ((n+2)^n / (n+1))   \ 
(n+1)^n (n+1) &>= (n+2)^n  \ 
(n+1)^(n+1) &>= (n + 2)^n  \

(n+1)^(n+1) &>= (n + 1 + 1)^(n+1 -1) \ 
$

to explain (\*), if we put $(n+1)/(n+2)$ and $n/(n+1)$ into a ratio, 
we end up with 
$
(n^2 + 2n + 1)/(n^2 + 2n)
$
show casing that $(n+1)/(n+2)$ is strictly greater than $n/(n+1)$

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


now, proving $(n!)^2 >= n^n, forall n in NN$

base case, $n=1$ 

$
(1!)^2 = 1 >= 1 = 1^1
$

assume that $(k!)^2 >= k^k, forall k in NN, k >= 1$

$
(k+1!)^2 &= ((k+1) k!)^2 \
&= (k+1)^2 (k!)^2\ 
&>= (k+1)^2 dot  k^k "by the inductive hypothesis" \ 
&= (k+1) dot (k+1) dot k^k\ 
&>= (k+1) dot (k+1) dot (k+1)^(k-1) "by using the hint above" \
&= (k+1) dot (k+1)^k \
&= (k+1)^(k+1)
$

$qed$

// &= (k+1) (k^(k+1) + k^k) \
// // &= (k^(k+2) + 2k^(k+1) + k^k) \ 
// // &>= (k+1) (k^(k+1)+1) \ 
// \
// // &>= (k+1) (k^k +1)\
// &= (k+1) (k+1)^k\
// &= (k+1)^(k+1)

== 3c

from part a, we have $ln(n!) in O(n ln(n))$

we now seek to prove $ln(n!) in Omega(n ln(n))$

choose $c = 1/2$ and $n_0 = 1$,

$
(n!)^2 &>= n^n & "from part b"\ 
ln(n!^2) &>= ln(n^n) & "since" ln "is a increasing function and " n>=n_0 >= 1\ 
2 ln(n!) &>=  ln(n!) \
&>= 1/2 n ln(n)\
&= c n ln(n)
$

therefore $ln(n!) in Omega(n ln(n))$

and since we have both $ln(n!) in Omega(n ln(n))$ and $ln(n!) in O(n ln(n))$

we can conclude $ln(n!) in Theta(n ln(n))$




// $
// c_0 n ln(n) <= ln(n!) <= c_1 n ln(n)
// $



