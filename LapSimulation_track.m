 
%% Load Track .mat File

    load('track_Hockenheim_GP.mat')
%     load('track_FSG_2013.mat')


%% Build Working Track Variables 

    track.dx        = 1;
    track.xbase     = 0:track.dx:max(track.x);
    track.crv       = interp1(track.x,track.crv_filt,track.xbase,'spline');

    track.x         = track.xbase;
    
    
    %% Calculate Instantaneous Radius
    
    track.radius    = 1 ./ track.crv;
    %plot(track.radius);
    %ylim([-500, 500]);