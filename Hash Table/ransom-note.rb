def checkMagazine(magazine, note)
    my_hash=Hash.new
    magazine.each do |x|
      if ! my_hash[x]
        my_hash[x]=1
      else
        my_hash[x]+=1
      end
    end
    note.each do |x|
        if !my_hash[x] ||my_hash[x]-1 < 0
            print "No"
            return
        end
        my_hash[x]-=1
    end
    print "Yes"
    return
end