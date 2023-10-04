clear

revi = exist('vectorBrillo');
if (~revi)
    vidObj = VideoReader('muestra1.mp4');
    %vidObj.CurrentTime = 2;
    vectorBrillo = [];
    while hasFrame(vidObj)
       frame = readFrame(vidObj);
       vectorBrillo = [vectorBrillo, brillo(frame)];
    end
end
normal =  vectorBrillo/max(abs(vectorBrillo));

sample = 1/vidObj.FrameRate;
ts = 0:sample:vidObj.Duration-sample; 
sal = bandpass(normal,[0.5 4.1],vidObj.FrameRate);%highpass(normal,0.5,vidObj.FrameRate);
ventana1 = sal(100:300);
[pks,locs] = findpeaks(ventana1,'MinPeakDistance',10);
d =[];

for i=length(locs):-1:2
    a =2;
    temp = locs(i)- locs(i-1);
    while temp < 9
        if (i-a)<1
            break
        end
        temp = locs(i)- locs(i-a);
        a = a+1;
        
    end
    d = [d,temp]; 
end
Ts = d*sample;
Frec = 1./Ts;
bits = Frec*60
bitpermin = mean(bits)
%plot(ventana1)



%time = timeseries(sal',ts);
%plot(time)




function [valor] = brillo(frame)
    gris = frame(:,:,1);%rgb2gray(frame);
    [i,j] = size(gris);
    suma = sum(sum(gris));
    valor = suma/(i*j);
end



