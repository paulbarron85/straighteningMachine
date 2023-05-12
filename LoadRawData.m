%{
    SIGNALS (Ts = 0.02s)
    1 21:28 Vibrationsmätn. Inkommande material (Vibration measurements. Incoming material) (mm/s) (0.02s)
    2 21:36 Actual force (measured value for the foce) (KN) (0.02s)
    3 21:35 Set point force (reference value for the force)  (KN) (0.02s)
    4 21:20 Actual moment under Rolls (Nm) (0.02s)
    5 21:12 Actual momento over Rolls (Nm) (0.02S)
    6 21:31 Width position (mm) 0.02s
    7 31:32 Height position (?) 0.02s
    8 21:33 error position for height (?) 0.02s
    9 21:34 error position for the width (?) 0.02s
    10 21:10 Positon övervals (Position over Rolls) (mm) 0.02s
    11 21:7 Vinklar övervals (Angle over Rolls) (degrees) 0.02s
    12 21:17 Viknlar undervals (Angles under roll) (degrees) 0.02s
%}

clear;
close all;

% Names of the signals in the data
sensorNames = [ "21:07 Angle over Rolls (degrees)"...
                "21:10 Position over Rolls (mm)"...
                "21:12 Actual moment over Rolls (Nm)"...
                "21:17 Angle under roll (degrees)"...
                "21:20 Actual moment under Rolls (Nm)"... 
                "21:28 Vibration measurements (mm per s)"...               
                "21:31 Width position (mm)"...
                "21:32 Height position (?)"...
                "21:33 Error position for height (?)"...
                "21:34 Error position for the width (?)"...
                "21:35 Set point force (KN)"... 
                "21:36 Actual force (KN)"];
numOfSignals = size(sensorNames, 2);

Ts = 0.02; % Sampling interval for data
subfolder = "Data/";
filenames = [ "B_01_04" "B_02_04" "B_03_04" "B_04_04", "B_05_04" ...
              "B_06_04" "B_07_04" "B_08_04" "B_09_04" "B_10_04", ...
              "B_11_04" "B_12_04" "B_13_04" "B_30_03" "B_31_03" ];
numOfFiles = size(filenames, 2);