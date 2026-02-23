function plan = buildfile

% Add the source folder to the path
addpath("code");

% Create a plan
plan = buildplan(localfunctions);


% Add the "check" task to identify code issues
plan("check") = matlab.buildtool.tasks.CodeIssuesTask("check");

% Add a task to run tests
plan("test") = matlab.buildtool.tasks.TestTask("tests");

% Make the "test" task the default task in the plan
plan.DefaultTasks = "check";

end

