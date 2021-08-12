% Return the the total different in seconds between packets
function [outputArg1] =  FindDifferenceBetweenDuration(inputArg)

format long
    CaptureTime=inputArg(1);
    totalTime=CaptureTime-CaptureTime;
      for i=1:size(inputArg)
            CurrentTime=inputArg(i);  
            TimeAsDuration(i)=CurrentTime-CaptureTime; 
            totalTime=TimeAsDuration(i)+totalTime;
      end
         tt=split(string(totalTime),":") ;
         outputArg1=str2num(tt(3));
end




