The first exercise prints out integer 3 as the variable x is initialised outside
of the variable scope created by the times method do...end block. Therefore when the variable's
value gets changed inside the block, it can be used outside again at the end.

The second exercise is different. This returns an error as the variable can't be located
in the outer scope since it was created in an inner scope.
This time the variable x is intialised inside the variable
scope of the times do...end block. Due to the fact that 'inner scope can see outer, but outer
cannot see inner' means that when we are trying call the variable in the outside it isn't able
to be seen and delivers an method/variable not found type of error.