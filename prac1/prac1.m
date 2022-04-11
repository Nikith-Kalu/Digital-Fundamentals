clc, clear

% Task 4

% defining known variables
    g = 9.8; % Acceleration of gravity (m/s^2)
    theta2 = deg2rad(45); % Angle of launch (radians) 
    d = 183; % Displacement of launch (metres)
    conv = 3.6; % Converting m/s to km/h 

% calculating initial velocity (km/h)
    voms  = sqrt((d/sin(2*theta2))*g); % Initial velocity(m/s) required
    vokmh = voms*conv; % initial velocity in m/s converted to km/h
    fprintf('The required initial velocity in km/h is: %1.2f km/h\n', vokmh) % Prints the required initial velocity (km/h)
%% 

% Task 7

% defining new variables
    vkmh = 125; % new velocity in km/h
    vms = vkmh/conv; % new velocity in m/s
    ydisp = 0; % initial y displacement

% calculating total time
    t = d/(vms*cos(theta2)); % finding time
    fprintf('The total time taken is: %1.2f seconds\n', t) % Prints the total time taken in seconds

% calculating initial height
    h = g*(t^2/2)-t*vms/sqrt(2)+ydisp; % finding height
    fprintf('The initial height required is: %1.2f m\n', h) % Prints the total time taken in seconds

% defining new variables
    to = 0:0.01:10; % time array for 0<10 incrementing at 0.01
    theta1 = deg2rad(35); % angle of launch at 35 degrees
    theta2 = deg2rad(45); % angle of launch at 45 degrees
    theta3 = deg2rad(55); % angle of launch at 55 degrees

% calculating x and y displacements
    x1 = vms*to*cos(theta1); % finding x displacement at 35 degrees 
    y1 = h+vms*to*sin(theta1)-1/2*g*to.^2; % finding y displacement at 35 degrees
    x2 = vms*to*cos(theta2); % finding x displacement at 45 degrees
    y2 = h+vms*to*sin(theta2)-1/2*g*to.^2; % finding y displacement at 45 degrees
    x3 = vms*to*cos(theta3); % finding x displacement at 55 degrees
    y3 = h+vms*to*sin(theta3)-1/2*g*to.^2; % finding y displacement at 55 degrees
    tiledlayout(2,1) % allows for two plots to be viewed side-by-side

% plotting the x vs y displacements
    nexttile % formats plot into side-by-side 
    plot(x1,y1,x2,y2,x3,y3,'LineWidth',1.5) % plots all 3 angles with a line width of 1.5

% properly setting chart properties
    title('X Displacement vs Y Displacement') % titles the chart 
    xlabel('X Displacement') % labels the x axis
    ylabel('Y Displacement') % labels the y axis
    xlim([0 200]) % limits the x axis from 0 to 200
    ylim([0 150]) % limits the y axis from 0 to 150
    xticks(0:20:200) % sets the x axis to increment by 20s
    yticks(0:20:140) % sets the y axis to increment by 20s
    legend('35° angle of launch','45° angle of launch','55° angle of launch') % Draws a legend to define the colours of each function to their respective angle
%% 

% Testing
    theta4 = deg2rad(15); % angle of launch at 15 degrees
    theta5 = deg2rad(75); % angle of launch at 75 degrees
    theta6 = deg2rad(31); % angle of launch at 31 degrees

    x4 = vms*to*cos(theta4); % finding x displacement at 15 degrees 
    y4 = h+vms*to*sin(theta4)-1/2*g*to.^2; % finding y displacement at 15 degrees
    x5 = vms*to*cos(theta5); % finding x displacement at 75 degrees
    y5 = h+vms*to*sin(theta5)-1/2*g*to.^2; % finding y displacement at 75 degrees
    x6 = vms*to*cos(theta6); % finding x displacement at 31 degrees
    y6 = h+vms*to*sin(theta6)-1/2*g*to.^2; % finding y displacement at 31 degrees

    nexttile % formats plot into side-by-side 
    plot(x4,y4,x5,y5,x6,y6,'LineWidth',1.5) % plots all 3 test angles with a line width of 1.5
    title('X Displacement vs Y Displacement (Test)') % titles the chart 
    xlabel('X Displacement') % labels the x axis
    ylabel('Y Displacement') % labels the y axis
    xlim([0 200]) % limits the x axis from 0 to 200
    ylim([0 150]) % limits the y axis from 0 to 150
    xticks(0:20:200) % sets the x axis to increment by 20s
    yticks(0:20:140) % sets the y axis to increment by 20s
    legend('15° angle of launch','75° angle of launch','31° angle of launch') % Draws a legend to define the colours of each function to their respective angle



