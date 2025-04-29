% Tamara Davies
% egytd8@nottingham.ac.uk


%% PRELIMINARY TASK - ARDUINO AND GIT INSTALLATION [10 MARKS]
clear a %Prevents any confusion with the variables after multiple runs.
a=arduino('COM7','Uno'); %Defining the variable that helps connect Matlab to the
%Arduino Uno.

timeon=0.5; %How long the LED light will be on.
timeoff=0.5; %How long the LED light will be off.
numBlinks=15; %How many times it will blink.
for i=1:numBlinks; %For loop to make this into a sequence.
 writeDigitalPin(a,'D8',1);  %Tells matlab which pin to send power to, turning the  LED light on.
 pause (timeon);
 writeDigitalPin(a,'D8',0); %Turns LED light off.
 pause (timeoff);
end





%% TASK 1 - READ TEMPERATURE DATA, PLOT, AND WRITE TO A LOG FILE [20 MARKS]

% Insert answers here

%% TASK 2 - LED TEMPERATURE MONITORING DEVICE IMPLEMENTATION [25 MARKS]

% Insert answers here


%% TASK 3 - ALGORITHMS – TEMPERATURE PREDICTION [25 MARKS]

% Insert answers here


%% TASK 4 - REFLECTIVE STATEMENT [5 MARKS]

% Insert reflective statement here (400 words max)


%% TASK 5 - COMMENTING, VERSION CONTROL AND PROFESSIONAL PRACTICE [15 MARKS]

% No need to enter any answershere, but remember to:
% - Comment the code throughout.
% - Commit the changes to your git repository as you progress in your programming tasks.
% - Hand the Arduino project kit back to the lecturer with all parts and in working order.