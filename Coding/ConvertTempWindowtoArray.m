 function [outputArg1] = ConvertTempWindowtoArray(tempWindow)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%tempWindow=TempWindow;

%       clear tempColumn
for k=1:size(tempWindow,2)
    
    for i=1:size(tempWindow,1)    
        if strcmp(class(tempWindow{i,k}),'double')==0
            tempvalue=tempWindow{i,k};
            tempColumn(i,k)=str2num(tempvalue);
        else
           tempColumn(i,k)=tempWindow{i,k};        
        end
    end
end
outputArg1 = tempColumn;
end

