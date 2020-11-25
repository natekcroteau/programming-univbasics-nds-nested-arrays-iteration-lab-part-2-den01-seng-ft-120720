def find_min_in_nested_arrays(src)

outer_count = 0                                       #outer index starting point 
weeks_lows = []                                       #empty array to shovel in lowest integer from each inner array 
                                   
  while outer_count < src.length do                   #while the starting index is less than the overall length of the outer array
  inner_count = 0                                     #inner index starting point for inner array
  low_temp = 999999                                   #var to capture any integer lower than it starting at unrealistic number for data 
    
    while inner_count < src[outer_count].length do    #while current inner counter < actual length of the inner array then continue
      
      if src[outer_count][inner_count] < low_temp     #if the integer at this inner index < the low_temp variable
      low_temp = src[outer_count][inner_count]        #then make that integer = to the low_temp to temporarilly store it 
      end                                             #on to the next index of the current array 
      
     inner_count += 1                                 #by adding one, which will write over the low_temp if it is actually lower now 
    end                                               
    
    weeks_lows << low_temp                            #now done with that array so shovel the lowest integer into the empty array 
   outer_count += 1                                   #move on to the next array within the outer array 
  end
  
  weeks_lows                                          #return the final low temps collected from each array 
end