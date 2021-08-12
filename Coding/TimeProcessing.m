 
% table name and column name for frames number(yt) and time
% here the time column in format of datetime and it converted to string to
% spilt the second and hour to convert it to duration with miliseconds

 
InputData=Youtube1;
CapturesTime=InputData.frame_time(InputData.frame_number==1);
yt=InputData.frame_time;
% find indexes of each capture
[~,index] = ismember(CapturesTime,InputData.frame_time);
% index(1)=[]
index(size(CapturesTime,1)+1)=size(yt,1)

index=index';
%convert the beginning of frames to durations
 for i=1:size(CapturesTime)
     CurrentTime=CapturesTime(i);
     TempString=split(string(CurrentTime)," ");
     CurrentTime=split(TempString(4),":");
     FirstFrameDuration(i)= duration(str2num(CurrentTime(1)),str2num(CurrentTime(2)),str2num(CurrentTime(3)),'Format','hh:mm:ss.SSSSSSSS');
 end
 counter=1;
%  convert the beginning of frames to durations
for k=1:size(index)-1
    CaptureTime=FirstFrameDuration(k);
     for i=index(k):index(k+1)
        CurrentTime=yt(i);
        TempString=split(string(CurrentTime)," ");
        CurrentTime=split(TempString(4),":");
        CurrentTime = duration(str2num(CurrentTime(1)),str2num(CurrentTime(2)),str2num(CurrentTime(3)),'Format','hh:mm:ss.SSSSSSSS');
        TimeAsDuration(counter)=CurrentTime-CaptureTime;
        counter=counter+1;
     end
     disp(k);
end
% TimeAsDuration=TimeAsDuration';
% Amazon1.frame_time=TimeAsDuration;
