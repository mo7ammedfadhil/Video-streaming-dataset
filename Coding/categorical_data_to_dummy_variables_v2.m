function outDum = categorical_data_to_dummy_variables_v2(data)

unique_values = unique(data);
 
for i=1:length(unique_values)
    dummy_variable(:,i) = double(ismember(data,unique_values(i))) ;
end 
 

    outDum = dummy_variable; 

end