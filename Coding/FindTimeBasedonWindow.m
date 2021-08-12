
% return the same time in seconds with the beging of the window as the begning
% of the capture
function [outputArg1] =  FindTimeBasedonWindow(inputArg)

format long
    CaptureTime=inputArg(1);
    totalTime=CaptureTime-CaptureTime;
      for i=1:size(inputArg)
            CurrentTime=inputArg(i);  
            TimeAsDuration(i)=CurrentTime-CaptureTime; 
%             totalTime=TimeAsDuration(i)+totalTime;
      end
         tt=split(string(TimeAsDuration),":") ;
         outputArg1=tt(:,:,3);
         outputArg1=str2double(outputArg1);
end