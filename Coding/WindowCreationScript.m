% data table ex AmazonFinal

MeanIndexs=[7;9; 10;15];
medianIndex=[2 ;7 ;8 ;10 ;9;15];
VarIndexs=[7 ;9 ;10;15];



WindowSize=3;
TimeIndex=1;
%to choose the required columns
Columns= unique([TimeIndex MeanIndexs' medianIndex' VarIndexs']);
InputData=Youtube1(:,Columns);%Change the main data file

counter=1;
for i=1:WindowSize:size(InputData)
    TempWindow=InputData(i:i+WindowSize-1,:);
    TimesCurrentWindow=TempWindow(:,1);
    TimesCurrentWindow=   table2array(TimesCurrentWindow);
%     change time to seconds so we can use varance ...and other statstical

    TimeInSeconds= FindTimeBasedonWindow(table2array(TempWindow(:,1)));
    TempWindow.frame_time=TimeInSeconds';
%     TempWindow=table2array(TempWindow);
    TempWindow=ConvertTempWindowtoArray(table2cell(TempWindow));
     columnCounter=4;% as 1 and 2 below for time
    
    OutData(counter,1)=FindDifferenceBetweenDuration(TimesCurrentWindow);
%     OutData(counter,2)=FindTimeBasedonWindow(TempWindow(:,1));
    OutData(counter,2)=var(TempWindow(:,1));
	OutData(counter,3)=mean(TempWindow(:,1));

    %   median to choose the middle value as decimal for the window
    for k=1:size(medianIndex)
        [~,index] = ismember(medianIndex(k),Columns);
         OutData(counter,columnCounter)=median(TempWindow(:,index));
         columnCounter=columnCounter+1;
%          disp('medianIndex')
    end
    
    for k=1:size(MeanIndexs)
        [~,index] = ismember(MeanIndexs(k),Columns);
         OutData(counter,columnCounter)=mean((TempWindow(:,index)));
         columnCounter=columnCounter+1; 
%          disp('MeanIndexs')       
    end
    
    for k=1:size(VarIndexs)
        [~,index] = ismember(VarIndexs(k),Columns);
         OutData(counter,columnCounter)=var((TempWindow(:,index)));
         columnCounter=columnCounter+1;  
%          disp('VarIndexs')         
    end
    for k=1:size(Columns,2)
        
         OutData(counter,columnCounter)=std((TempWindow(:,k)));
         columnCounter=columnCounter+1;  
%          disp('std')         
    end
    
    for k=1:size(Columns,2)
        
         OutData(counter,columnCounter)=min((TempWindow(:,k)));
         columnCounter=columnCounter+1;  
         OutData(counter,columnCounter)=max((TempWindow(:,k)));
         columnCounter=columnCounter+1;  
%          disp('std')         
    end
    counter=counter+1;
%     columnCounter
i
%  if i>=21
%      break;
%  end
end
