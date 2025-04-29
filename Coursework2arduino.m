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

duration=600; %Time in seonds of the data collecting.
timeinterval=1;
numberofsamples=duration/timeinterval; %Defines how often the readings will be taken.

V0=0.5; %Voltage at 0 degrees, taken from the sensor sheet.
Temp_c=0.01; %Temperature coefficient of the temperature sensor.

timereadings=zeros(numberofsamples,1); %Stores information of each reading in its own seperate array.
voltage=zeros(numberofsamples,1);
temperature=zeros(numberofsamples,1);

for i=1:numberofsamples
   voltage(i)=readVoltage(a,'A2');
   
   temperature(i)=(voltage(i)-V0)/Temp_c;

   timereadings(i)=(i-1)*timeinterval;

    if i<numberofsamples
        pause(timeinterval-0.02);
            
    end 
  

end 


maxTemperature=max(temperature);
minTemperature=min(temperature);
AverageTemperature=mean(temperature);

x=timereadings;
y=temperature;

figure;
plot(x,y,'g','LineWidth',1.5);
xlabel='Time in Seconds'
ylabel='Temperature in Degrees Celcius'
title('Temperature vs Time');
grid on;

fprintf('Data Logging intitated - 29/04/2025\n');
fprintf('Location - Nottingham\n\n')

time=numberofsamples./60;
for n=1:numberofsamples
    if n<60;
        fprintf('Minute\t\n',time(n));
        fprintf('Temperature\t%d')
    end
    if n<120;


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