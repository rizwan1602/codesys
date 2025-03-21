PROGRAM Basecoat
VAR
    xaxis : INT := 10;
    yaxis : INT := 20;
END_VAR

(* Method to start Robot 1 *)
METHOD robot1start
BEGIN
    WriteOutput('🤖 Robot 1 started');
END_METHOD

(* Method to start Robot 2 *)
METHOD robot2start
BEGIN
    WriteOutput('🤖 Robot 2 started');
END_METHOD

(* Method to change X-axis position *)
METHOD changeaxis
VAR_INPUT
    axis : INT;
END_VAR
BEGIN
    IF axis > 0 THEN
        xaxis := xaxis + axis;
        WriteOutput(CONCAT('📍 New X-axis position: ', INT_TO_STRING(xaxis)));
    END_IF;
END_METHOD

(* Method to get axis positions *)
METHOD getaxis
BEGIN
    WriteOutput(CONCAT('📌 Current Position: X = ', INT_TO_STRING(xaxis), ', Y = ', INT_TO_STRING(yaxis)));
END_METHOD

(* Inheritance: Clearcoat extends Basecoat *)
PROGRAM Clearcoat
EXTENDS Basecoat

(* Method to start Robot 3 *)
METHOD robot3start
BEGIN
    WriteOutput('🤖 Robot 3 started');
END_METHOD

(* Function demonstrating Polymorphism *)
FUNCTION robot
VAR_INPUT
    coat : Basecoat;
END_VAR
BEGIN
    coat.robot1start();
END_FUNCTION

(* Main Execution *)
VAR
    obj : Clearcoat;
END_VAR

(* Calling methods *)
BEGIN
    obj.robot1start();
    obj.getaxis();
    robot(obj);
END_PROGRAM
