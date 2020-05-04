def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  collection_index = 0

  while collection_index < collection.length do
    current_item = collection[collection_index]
    if ( current_item[:item] == name )
      return current_item
    else nil
    end
    collection_index += 1
  end
end

def consolidate_cart(cart)
 new_cart = []
 counter = 0 
 while counter < cart.length 
 new_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
 if new_item != nil
   new_item[:count] += 1 
 else 
   new_item = {
     :item => cart[counter][:item],
     :price => cart[counter][:price],
     :clearance => cart[counter][:clearance],
     :count => 1
   }
   new_cart << new_item
 end
 counter +=1
 end
 new_cart
 
 end

  



