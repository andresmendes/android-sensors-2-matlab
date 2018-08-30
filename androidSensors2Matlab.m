%% Android Sensors 2 Matlab
%
%

close all
clear all
clc

% Deleting all instruments
delete(instrfindall);

% Set up
phoneIP = '10.204.0.102';
port = 5555;

u = udp(phoneIP , port - 1 , 'LocalPort' , port , 'InputBufferSize' , 1024);
fopen(u);

% Preallocating
msgMat = zeros(99,3);
k = 1;

while k < 1000

    [msg,~] = fread(u,10);

    msgCell = strsplit(char(msg)',',');
    msgNum = [str2double(msgCell{3}) str2double(msgCell{4}) str2double(msgCell{5})];

    if k < 100
        msgMat(k,:) = msgNum;
    else
        msgMat = [msgMat(2:end,:) ; msgNum];
    end

    % convert the message to ASCII and print it out
    fprintf('%s\n',char(msg)');

    plot(msgMat)

    drawnow

    k = k + 1;

end

% Close all instruments
fclose(instrfindall);
