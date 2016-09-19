%% Android Sensors 2 Matlab

IPcelular = '10.204.0.102';
IPnote = '10.204.0.141';

u = udp('10.204.0.102',5554,'LocalPort',5555,'InputBufferSize',1024);
fopen(u);

% Preallocating
msgMat = zeros(99,3);
k = 1;
while 1

    % get the message/payload only assuming a max size of 200 bytes
    [msg,~] = fread(u,10);

    msgCell = strsplit(char(msg)',',');
    msgNum = [str2num(msgCell{3}) str2num(msgCell{4}) str2num(msgCell{5})];

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

% fclose(u);
% esse aqui que fecha direito
fclose(instrfindall);
