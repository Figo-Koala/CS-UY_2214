    movi $1, 0                  # product = 0
    lw   $2, multiplicand($0)   # m = Mem[multiplicand]
    lw   $3, multiplier($0)     # n = Mem[multiplier]
    movi $4, 1                  # mask = 1


loop:
    and  $5, $3, $4             # $5 = n & mask
    jeq  $5, $0, skip_add       # if bit == 0, skip the add
    add  $1, $1, $2             # product += m

skip_add:
    add  $2, $2, $2             # m <<= 1   
    add  $4, $4, $4             # mask <<= 1
    slt  $6, $3, $4             # $6 = (n < mask) ? 1 : 0  
    jeq  $6, $0, loop           # if not done, loop again
    halt                        # product is in $1


   multiplicand: .fill 123
   multiplier:   .fill 119