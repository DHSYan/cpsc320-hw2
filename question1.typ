= 1 Slow as a logarithm

expanding on $log_b (n) in O(n^x)$ with the definition 
of big O, 

$
exists c in RR, exists n_0 in RR, c > 0\ 
forall n >= n_0 > 0, \
log_b (n) <= c dot n^x
$


// CHOOSING our  own n_0 and c
for every $b > 1$ and $x > 0$\
let $n_0 = 1$ and $c = 1$
$
log_b (1) <=  1 dot 1^x \
0 <= 1 dot 1^x \ 
0 <= 1
$
so $n_0 = 1$ and $c = 1$ is an valid choosing of $c$ and $n_0$

// END GOAL
\ \ \ \ and we want, by the definition of little o
$
lim_(n -> oo) ((log_b (n))/(n^x)) = 0\
$

// THOUGHT 1 (BUSTED)
// how do I use the fact given??
// like the c? 
//

// since we have $x>0$, the denominator is always positive
// - according to https://en.wikipedia.org/wiki/List_of_logarithmic_identities
//   we have this as an logarithm identity 
// OH DUDE WE ARE SUPPOSED TO USE FRICKING FACT GIVEN


/// THOUGHT 2: More directly maniplulation from the fact
// okay so we have the inequality
// $
// log_b (n) <= c dot n^x \ 
//
// (log_b (n) )/ n^x <= c \ 
//
// 1/(n^x) <= c/(log_b (n))
// $
// AI Decalartion: AI verified the fact that the above 
// would only work if $n >= n_0 > 1$. and with my own 
// understanding and words, yes because if $n < 1$ 
// $log_b (n) < 0$ and that would break the inequality

// THOUGHT 3: More potential to use the fact with 
// $
// lim_(n -> oo) ((b^(log_b (n)))/(b^(n^x))) = \ 
//
// lim_(n -> oo) n/(b^(n x)) = \ 
//
// n <= c b^(n x) // maybe this is using the fact?
// $

// THOUGHT 4: not really using the fact though
// $
// lim_(n -> oo) ((log_n (log_b (n)))/(log_n (n^x))) = \ 
//
// lim_(n -> oo) ((log_n (log_b (n)))/(x dot (log_n (n)))) = \ 
//
// lim_(n -> oo) (log_n (log_b (n)))/x = \ 
//
// 1/x lim_(n -> oo) (log_n (log_b (n))) = \ 
// $
