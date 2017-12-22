def maze_escape(input_,offset_rule=False):
    array = input_.copy()
    i = 0
    N = len(array)
    N_steps = 0
    while 0 <= i < N:
        value = array[i]
        if offset_rule is True:
            array[i] += 1 if value < 3 else -1
        else:
            array[i] += 1
        i += value
        N_steps += 1
    
    return N_steps