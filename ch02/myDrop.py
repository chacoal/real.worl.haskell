def myDrop(n, elts):
    if n <= 0:
        return elts
    return myDrop(n-1, elts[1:])
