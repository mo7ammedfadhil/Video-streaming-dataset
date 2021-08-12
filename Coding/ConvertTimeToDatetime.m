% Return spicfic columns with values from  tables 
% Temp=AllDataWithForms(ismember(AllDataWithForms.Object,'Camera'),:);


% Convert string to DateTime with milliseconds
% tt = datetime(temp,'Format','MMM d, yyyy HH:mm:ss.SSSSSSSSS')
TimeIndex=1;
temp=Youtube1(:,TimeIndex);
temp=table2cell(temp);
%split time from datetime string
 for i=1:size(temp)
    ss=split((temp{i,:}),' GMT Standard Time');
    temp{i,:}=char(ss(1));
    tt2(i) = datetime(temp{i},'Format','MMM d, yyyy HH:mm:ss.SSSSSSSSS');

 end
 tt2=tt2';% put it back in main data table
%  Amazon1.frame_time=tt2;












%  counter=1;
% % % calcalte the difference of time for window of three 
% for i=1:3:size(temp)    
%     
% %     %time code
% % %  [h,m,s] =hms();   
% % %  t1=duration(h,m,s,'Format','hh:mm:ss.SSSSSS');
% % %  [h,m,s] =hms((temp{i+1}));
% % %   t2= duration(h,m,s,'Format','hh:mm:ss.SSSSSS');
% % %  [h,m,s] =hms((temp{i+2}));
% % %   t3= duration(h,m,s,'Format','hh:mm:ss.SSSSSS'); 
% % %  differenace1= t2-t1;
% % %  differenace2= t3-t2;
% % %  differenace=differenace2-differenace1;
% % 
% t1=temp(i);
% t2=temp(i+1);
% t3=temp(i+2);
% % %  Data(counter)=abs(seconds(differenace));
%  Data(counter)=var([t1 t2 t3],1);%calcaulate the varanice
% %  Data(counter)=mean([t1 t2 t3]);
% 
% 
% 
%  counter=counter+1;
%  i=i+2;
%  if i+2>=size(temp)
%      break;
%  end
%  
% end
% 
% Data=Data';
% convert string to decmial catergial
% [catgeries, ~, NewTemp]=unique(temp);




