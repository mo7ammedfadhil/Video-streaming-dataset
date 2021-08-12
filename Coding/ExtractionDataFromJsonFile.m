% Read from Json file to struct 

% 
  clear TempData 
%  val=Amazon11pm;

fname = 'YouTube1.json'; % json  file name
fid = fopen(fname); 
raw = fread(fid,inf); 
str = char(raw'); 
fclose(fid); 
disp('Json String') 
val = jsondecode(str);
 

disp('Json Ready') 

j=0;
 for i = 1:size(val)
     if sum(strcmp(fieldnames(val(i).x_source.layers), 'ip')) == 1
        TempData{i-j,1} =val(i).x_source.layers.frame.frame_time;
        TempData{i-j,2} =val(i).x_source.layers.frame.frame_len;
        TempData{i-j,3} =val(i).x_source.layers.frame.frame_cap_len;
        TempData{i-j,4} =val(i).x_source.layers.frame.frame_number;
        TempData{i-j,5} =val(i).x_source.layers.eth.eth_dst;
        TempData{i-j,6} =val(i).x_source.layers.eth.eth_src;
        TempData{i-j,7} =val(i).x_source.layers. ip.ip_len;
        TempData{i-j,8} =val(i).x_source.layers.ip.ip_frag_offset;
        TempData{i-j,9}=val(i).x_source.layers.ip.ip_ttl;
        TempData{i-j,10}=val(i).x_source.layers.ip.ip_proto;
        TempData{i-j,11}=val(i).x_source.layers.ip.ip_src;
        TempData{i-j,12}=val(i).x_source.layers.ip.ip_dst;
        
         if sum(strcmp(fieldnames(val(i).x_source.layers), 'tcp')) == 1 
            %A.Properties.VariableNames = {'ip_hdr_len2' 'ip_len2' 'frame_len' 'frame_cap_len' 'frame_number' 'eth_dst' 'eth_src' 'ip_len' 'ip_frag_offset' 'ip_ttl' 'ip_proto' 'ip_src' 'ip_dst' 'udp_srcport' 'udp_dstport' 'udp_length' 'data_len'} 
            TempData{i-j,13}=val(i).x_source.layers.tcp.tcp_srcport;
            TempData{i-j,14}=val(i).x_source.layers.tcp.tcp_dstport;
            TempData{i-j,15}=val(i).x_source.layers.tcp.tcp_len;
            TempData{i-j,16}=val(i).x_source.layers.tcp.tcp_window_size;
            TempData{i-j,17} =val(i).x_source.layers.tcp.tcp_ack;
            TempData{i-j,18} ='0';
%               if sum(strcmp(fieldnames(Temp(i).x_source.layers.tcp), 'tcp_payload')) == 1%  || sum(strcmp(fieldnames(Temp(i).x_source.layers), 'udp')) == 1  
%                  TempData{i-j,19} =val(i).x_source.layers.tcp.tcp_payload;
%               else
%                      TempData{i-j,19} ='0';
%               end
         else if sum(strcmp(fieldnames(val(i).x_source.layers), 'udp')) == 1 
                TempData{i-j,13}=val(i).x_source.layers.udp.udp_srcport;
                TempData{i-j,14}=val(i).x_source.layers.udp.udp_dstport;
                TempData{i-j,15}=val(i).x_source.layers.udp.udp_length;
                TempData{i-j,16}='0';
                TempData{i-j,17}='0';
                TempData{i-j,18} ='1';
%                 TempData{i-j,19} ='0'; FileData = load('FileName.mat'); csvwrite('FileName.csv', FileData.FileName);
             else
                j=j+1;
             end
         end
         
     else
         j=j+1;
     end
     
 end
 TempData=cell2table(TempData);
 TempData.Properties.VariableNames={'frame_time','frame_len','frame_cap_len','frame_number','eth_dst','eth_src','ip_len','ip_frag_offset','ip_ttl','ip_proto','ip_src','ip_dst','UDP_tcp_srcport','UDP_tcp_dstport','UDP_tcp_len','tcp_window_size','tcp_ack','UDP'};