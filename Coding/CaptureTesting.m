%  
% data= randn(100); %generate random normally distributed 100x100 matrix
% ref1= randn(100); %generate random normally distributed 100x100 matrix
% ref2= rand(100); %generate random uniformly distributed 100x100 matrix
% x=sort(data(:));
% y1=sort(ref1(:));
% y2=sort(ref2(:));
% subplot(1,2,1); plot(x,y1); 
% subplot(1,2,2); plot(x,y2);
% % 
temp=Youtube1.frame_number;
clear tempColumn
    for i=1:size(temp,1)
    
       tempvalue=temp{i};
        tempColumn(i)=str2num(tempvalue);
    end
tempColumn=tempColumn';
temp=tempColumn;
 Youtube1.frame_number=temp;
% for i = 2:size(temp,2)
%     
%     clear tempColumn
%     for k=1:size(temp,1)
%     
%        tempvalue=temp{:,i};
%         tempColumn(k)=cell2mat(tempvalue);
%     end
%     temp{:,i}=tempColumn;
% end
% temp.NetfilxTest4=char(temp.NetfilxTest4);
% temp.NetfilxTest4=str2num(temp.NetfilxTest4);

% % Add Class to data
% for i = 1:size(Amazon1,1)
%     
%     Data(i)=1;
% end
% Data=Data';
% Amazon1(:,19)=array2table(Data);
    
% 
% NumOfProp=unique(unique(temp));
% NumOfProp=array2table(NumOfProp);
% tt=array2table((1:size(NumOfProp,1))')
% NumOfProp(:,2)=tt
% for i=1:size(temp)    
%     
%     [h,m,s] =hms(temp{i});   
%  t1=ttt(h,m,s);
%  [h,m,s] =hms((temp{i+1}));
%   t2= ttt(h,m,s);
%  [h,m,s] =hms((temp{i+2}));
%   t3= ttt(h,m,s);
%   
%     
% end
% function ss=ttt(h,m,s)
% ss=0;
%   if(h
% 
% end
% t1=datevec(datenum(temp{4}));
%  t2=datevec(datenum(temp{5}));
%  t3=datevec(datenum(temp{6}));
%  differenace1= etime(t2,t1)
%  differenace2= etime(t3,t2)

% 
%  [h,m,s] =hms(temp{i});   
%  t1=duration(h,m,s,'Format','hh:mm:ss.SSSSSS')
%  [h,m,s] =hms((temp{i+1}));
%   t2= duration(h,m,s,'Format','hh:mm:ss.SSSSSS')
%  [h,m,s] =hms((temp{i+2}));
%   t3= duration(h,m,s,'Format','hh:mm:ss.SSSSSS')
%  differenace1= t2-t1
%  differenace2= t3-t2
%  differenace=differenace2-differenace1