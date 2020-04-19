



def split(arr)
    if arr.length<=1
       return arr
    else
        mid= (arr.length/2).floor
        arr1=split(arr[0..mid-1])
        arr2=split(arr[mid..arr.length])
        merge(arr1,arr2)
    end
end



def merge(arr1,arr2)
    new_arr=[]
    done=false
    #10.times do
    while arr1.length>0 || arr2.length>0

        if arr1.length==0
            min=arr2
        elsif arr2.length==0
            min=arr1
        else
            min =arr1.first < arr2.first ? arr1 : arr2
        end
        #puts "before push arr1: #{arr1}  arr2:#{arr2} new_arr:#{new_arr} "
        new_arr.push(min.shift)
        #puts "after push arr1: #{arr1}  arr2:#{arr2} new_arr:#{new_arr}"
    end
    return new_arr
end


arr=[6,1,8,3,23,62,1,6]
puts split(arr)