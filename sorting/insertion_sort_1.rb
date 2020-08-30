def insertionSort1(n, arr)

    el=arr[n-1]
    samp=arr
    cond=true
    i=n-1
    while cond
    cond=false
    if (samp[i-1] > el) && i != 0
    samp[i]=samp[i-1]
    cond=true
    else
    samp[i]=el
    cond=false
    end
    print samp.join(" ")
    print "\n"
    i -=1
    end
    end
