A 4x1 MUX selects one of four inputs.

Inputs: 4 data inputs (I 
0
​
 ,I 
1
​
 ,I 
2
​
 ,I 
3
​
 ).

Select Lines: 2 select lines (S 
1
​
 ,S 
0
​
 ).

Output: 1 output (Y).

Boolean Expression: Y=(¬S 
1
​
 ¬S 
0
​
 ⋅I 
0
​
 )+(¬S 
1
​
 S 
0
​
 ⋅I 
1
​
 )+(S 
1
​
 ¬S 
0
​
 ⋅I 
2
​
 )+(S 
1
​
 S 
0
​
 ⋅I 
3
​
 )

Truth Table:
| S 
1
​
  | S 
0
​
  | Y |
|:---:|:---:|:---:|
| 0 | 0 | I 
0
​
  |
| 0 | 1 | I 
1
​
  |
| 1 | 0 | I 
2
​
  |
| 1 | 1 | I 
3
​
  |

