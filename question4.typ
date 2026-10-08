= Question 4

`H` is home 
`A` is school A
`B` is school B
`W` is work
== a)
3 times for symmetric

6 times for asymmetric

== b)

2 times for symmetric, because running from (home, A)
gives implicitly (home, B), and we just need to run it again
from (A,B)

3 times for asymmetric. 

we need all 6, 

```
(H, A)
(A, H)
(A, B)
(B, A)
(H, B)
(B, H)
```

running noodle maps on `(H, A)` gives 
also `(H, B)`

again, on `(A, B)` gives `(A, H)`

again on `(B, H)` gives `(B, A)`

thus, getting all 6 in 3 runs


== c)
if We are working only under part a with part c, 

5 times if symmetric. 

```
(H, A)
(H, B)
(A, B)
(A, W)
(B, W)
```

if asymmetric, it's 6 times, one per each edge
```
(H, A)
(H, B)
(A, B)
(B, A)
(A, W)
(B, W)
```

now working under part b

2 times for symmetric. in this case we need four edges,
 
```
(H, A)
(B, A)
(B, W)
(A, W)
```

run it on `(B, A)` gives `(B, W)`

run it again on `(A, W)` gives `(H, A)` as well.

in the asymmetric case, it's 3 times

```
(H, A)
(H, B)

(A, W)
(A, B)

(B, W)
(B, A)
```

run it on `(A, W)` gives `(A, B)` 

run it on `(B, A)` gives, `(B, W)`

run it on `(H, A)` gives `(H, B)`





