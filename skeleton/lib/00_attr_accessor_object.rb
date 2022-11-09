class AttrAccessorObject
  def self.my_attr_accessor(*names)
    names.each do |i|
    

      define_method("#{i}=".to_sym) do |new_value|
        instance_variable_set("@#{i}", new_value)
      end

      define_method("#{i}".to_sym) do 
        instance_variable_get("@#{i}")
      end

    end
  end
end


