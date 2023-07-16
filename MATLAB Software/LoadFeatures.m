%{
    This script loads the features calculated by Matlab's Diagnostic
    Feature Designer
%}

load("DFD_FeatureTable_TimeDomain.mat");
% load("DFD_FeatureTable_FreqDomain.mat");

load("DFD_FeatureTable_TimeDomain_DcRemoved.mat");
% load("DFD_FeatureTable_FreqDomain_DcRemoved.mat");

load("DFD_FeatureTable_TimeDomain_Padded.mat");
% load("DFD_FeatureTable_FreqDomain_Padded.mat");

load("DFD_FeatureTable_TimeDomain_DcRemovedPadded.mat");
% load("DFD_FeatureTable_FreqDomain_DcRemovedAndPadded.mat");

% Time Tables are equivelant to the Signal Numbers i.e. TimeTable = 21.07
signalNames = [  
                "TimeTable_sigstats/"...
                "TimeTable1_sigstats/"...
                "TimeTable2_sigstats/"...
                "TimeTable3_sigstats/"...
                "TimeTable4_sigstats/"...
                "TimeTable5_sigstats/"...
                "TimeTable6_sigstats/"...
                "TimeTable7_sigstats/"...
                "TimeTable8_sigstats/"...
                "TimeTable9_sigstats/"...
                "TimeTable10_sigstats/"...
                "TimeTable11_sigstats/"
              ];

% Time domain features produced by Matlab DFD
featureNames = [
                "ClearanceFactor"... %1
                "CrestFactor"... %2
                "ImpulseFactor"... %3
                "Kurtosis"... %4
                "Mean"... %5
                "PeakValue"... %6
                "RMS"... %7
                "SNR"... %8
                "SINAD"... %9
                "ShapeFactor"... %10
                "Skewness"... %11
                "Std"... %12
                "THD" %13
               ];
numOfFeatures = size(featureNames, 2);

load("DFD_FeatureTable_FreqDomain.mat");

% Time Tables are equivelant to the Signal Numbers i.e. TimeTable = 21.07
signalNames_Freq = [  
                "TimeTable_ps_spec/"...
                "TimeTable1_ps_spec/"...
                "TimeTable2_ps_spec/"...
                "TimeTable3_ps_spec/"...
                "TimeTable4_ps_spec/"...
                "TimeTable5_ps_spec/"...
                "TimeTable6_ps_spec/"...
                "TimeTable7_ps_spec/"...
                "TimeTable8_ps_spec/"...
                "TimeTable9_ps_spec/"...
                "TimeTable10_ps_spec/"...
                "TimeTable11_ps_spec/"
              ];
numOfSignals = size(signalNames, 2);

% Time domain features produced by Matlab DFD
featureNames_Freq = [
                "BandPower"... %1
                "PeakAmp1"... %2
                "PeakFreq1"... %3
               ];
numOfFeatures_Freq = size(featureNames_Freq, 2);