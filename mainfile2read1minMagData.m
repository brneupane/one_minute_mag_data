%%%%%%%%%%%% Main file to read the one  minute mag data from cassani from
%%%%%%%%%%%% 2004 to 20011
clear all
clc
n=10;  %This is the number of files to be read
path_name='/Users/brneupane/Desktop/Matlab_1min_Mag_data_Data_collection/All_required data/';
magenetometer_data=[];
%%%%%%%%%Reading of all the file name

file_name(1,:)={'2004_FGM_KRTP_1M.TAB'};
file_name(2,:)={'2005_FGM_KRTP_1M.TAB'};
 file_name(3,:)={'2006_FGM_KRTP_1M.TAB'};
 file_name(4,:)={'2007_FGM_KRTP_1M.TAB'};
 file_name(5,:)={'2008_FGM_KRTP_1M.TAB'};
 file_name(6,:)={'2009_FGM_KRTP_1M.TAB'};
 file_name(7,:)={'2010_FGM_KRTP_1M.TAB'};
 file_name(8,:)={'2011_FGM_KRTP_1M.TAB'};
 file_name(9,:)={'2012_FGM_KRTP_1M.TAB'};
 file_name(10,:)={'2013_FGM_KRTP_1M.TAB'};

%%%%%collection of all the data
for i=1:n
 full_file_name = horzcat(path_name,char(file_name(i,:)));
 file_id=fopen(full_file_name,'r');
 size=[15,Inf];
 mag_Data=fscanf(file_id,'%d-%d-%dT%d:%d:%f %f %f %f %f %f %f %f %f %f',size);
 fclose(file_id);
 magenetometer_data=horzcat(magenetometer_data,mag_Data);
% mag_Data=[];
end
save('Mag_1M_data.mat','magenetometer_data')