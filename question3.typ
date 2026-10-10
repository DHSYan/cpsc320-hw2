= Question 3 

== 3a)
To prove that $ln(n!) in O(n ln(n))$, we choose $c$ and $n_0$ and follow
the definition of big O. We began with the left hand side $ln(n!)$ 
and slowly expand and perform algebraic manipulations to show that we 
can arrive at to $c dot n ln(n)$ with an inequality in the chain of 
those algebraic manipulations.

The critical logic to solving this proof, is to realize, that products in 
the natural log turns into addition. And, each of the terms in $ln(n - i)$
for some $i in [0, n]$, is smaller or equal to $ln(n)$ because it's a 
increasing function. which just means a larger input to the natural log
will yield a larger output. And we choose $n_0 = 1$, because that's where 
the natural log is positive. With that, we can build up the expression 
$n ln(n)$.

choose $c = 1$, with no particular reason other than, it let us build up 
to the definition of Big O

Proof:

Choose $c = 1$,  $n_0 = 1$


$
ln(n!) & = ln(n dot (n-1)!) \
& = ln(n) + ln((n - 1)!) \ 
& = ln(n) + ln(n-1) + ... + ln(1) & "there are" n "terms" \
& <= ln(n) + ln(n) + ... + ln(n) & "since" ln(n) "is an increasing function and" n >= n_0 = 1 \
& = n dot ln(n) \ 
& = 1 dot n dot ln(n)\
& = c dot n ln(n) 
$ 


therefore $exists c in RR^+, exists n_0 in NN, forall n >= n_0, ln(n!) <= c dot n ln(n)$

which is the definition of $ln(n!) in O(n ln n)$ 

== 3b 
proving the hint first: \
$forall n in NN, n^n >= (n+1)^(n-1)$

base case $n = 1$
$
1^1 >= (1 + 1)^(1-1) \
1 >= 2^0 \
1 >= 1
$

Assume for inductive hypothesis
$
k^k >= (k+1)^(k-1)
$ for $1 <= k$ and $k in NN$

from the inductive hypothesis 
$
k^k &>= (k+1)^(k-1) \ 

k^k &>= ((k+1)^k)/(k+1) \ 

(k^k)/(k+1)^k &>= 1/(k+1) \ 

(k/(k+1))^k &>= 1/(k+1) \ 

((k+1)/(k+2))^k > (k/(k+1))^k &>= 1/(k+1) "(*)"\ 

((k+1)/(k+2))^k &>= 1/(k+1)   \ 
(k+1)^k/(k+2)^k &>= 1/(k+1)   \ 
(k+1)^k &>= ((k+2)^k / (k+1))   \ 
(k+1)^k (k+1) &>= (k+2)^k  \ 
(k+1)^(k+1) &>= (k + 2)^k  \

(k+1)^(k+1) &>= (k + 1 + 1)^(k+1 -1) \ 
$

to explain (\*), if we put $(k+1)/(k+2)$ and $k/(k+1)$ into a ratio, 
we end up with 
$
(k^2 + 2k + 1)/(k^2 + 2k)
$
show casing that $(k+1)/(k+2)$ is strictly greater than $k/(k+1)$

therefore by mathematical induction, we have 
$
forall n in NN, n^n >= (n+1)^(n-1)
$

Next, proving $(n!)^2 >= n^n, forall n in NN$

base case, $n=1$ 

$
(1!)^2 = 1 >= 1 = 1^1
$

For inductive hypothesis assume that $(k!)^2 >= k^k, forall k in NN, k >= 1$

$
((k+1)!)^2 &= ((k+1) k!)^2 \
&= (k+1)^2 (k!)^2\ 
&>= (k+1)^2 dot  k^k & "by the inductive hypothesis" \ 
&= (k+1) dot (k+1) dot k^k\ 
&>= (k+1) dot (k+1) dot (k+1)^(k-1) &"by using the hint" \
&= (k+1) dot (k+1)^k \
&= (k+1)^(k+1)
$

therefore by mathematical induction we have 
$
(n!)^2 >= n^n, forall n in NN
$

$qed$

== 3c

from part a, we have $ln(n!) in O(n ln(n))$

we now seek to prove $ln(n!) in Omega(n ln(n))$

choose $c = 1/2$ and $n_0 = 1$,

$
(n!)^2 &>= n^n & "from part b"\ 
ln(n!^2) &>= ln(n^n) & "since" ln "is a increasing function and " n>=n_0 >= 1\ 
2 ln(n!) &>= ln(n^n) \ 
ln(n!) &>= 1/2 ln(n^n) & "divide both sides by" 2\ 
&&"then we get"\
ln(n!) &>= 1/2 n ln(n)\
&= c n ln(n)
$

therefore $exists c in RR^+, exists n_0 in NN, forall n >= n_0, c dot n ln(n) <= ln(n!)$

which is the definition of $ln(n!) in Omega(n ln(n))$

\

and since we have both $ln(n!) in Omega(n ln(n))$ and $ln(n!) in O(n ln(n))$

we can conclude $ln(n!) in Theta(n ln(n))$



