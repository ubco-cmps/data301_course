import numpy as np

def make_larger2(n,denominator):
    """ Makes the number larger """
    
    #assert num2 != 0, "You provided 0 as the denominator - you are a terrible person"
    ret = np.nan
    try:
        ret = n**2 + denominator
    except ZeroDivisionError as e:
        print("You provided 0 as the denominator - you are a terrible person")
        raise e
    finally:
        print("Don't worry, you are the best coder in the history of the coders")
        return ret