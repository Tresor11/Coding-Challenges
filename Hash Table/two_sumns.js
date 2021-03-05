var twoSum = function(nums, target) {
    let hash={}
    let i = 0
    for(el of nums){
        let temp=target-el
        if (hash[temp.toString()] !== undefined){
            return [hash[temp.toString()],i]
        }else{
            hash[el.toString()]=i
        }
        i ++
    }
    return []
};