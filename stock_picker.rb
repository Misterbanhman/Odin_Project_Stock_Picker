require 'pry-byebug'

$highest_difference = 0
$final_array = []

def stock_picker(array)
    array.each do |number|
        for i in (array.index(number) + 1)..(array.length-1)
            if $highest_difference < (array[i]-number)
                $highest_difference = array[i]-number
                update_tracker(array.index(number),i)
            end
        end
    end
    p $final_array
end

def update_tracker(index1,index2)
    $final_array = [index1,index2]
end

stock_picker([17,3,6,9,15,8,6,1,10])