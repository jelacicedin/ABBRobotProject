MODULE Module1
    CONST robtarget Target_30_2:=[[-237.219768702,866.283675835,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[716.121686162,335.077687596,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[1057.065915871,-17.60100368,500],[0,1,0,0],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40_2:=[[277.117965124,-17.60100368,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10:=[[-345.337592383,-634.2218361,470],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_2:=[[-345.337592383,-1509.837410954,470],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_3:=[[12.284555899,-1493.428131522,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_4:=[[11.425088297,-611.443739064,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_5:=[[353.203433771,-634.2218361,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_6:=[[379.156403723,-1514.983024916,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST num x_vacuum_offset := 1097.85-1100.6;
    CONST num y_vacuum_offset := 197.02-246.02;
    
    
    VAR robtarget p4;
    VAR robtarget p5;
    VAR robtarget p6;
    VAR robtarget p7;
    
    VAR robtarget p8;
    VAR robtarget p9;
    VAR robtarget p10;
    VAR robtarget p11;
    VAR robtarget p12;
    VAR robtarget p13;
    VAR robtarget p14;
    
    VAR pose frame1;
    
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   <Insert description here>
    !
    ! Author: jelac
    !
    ! Version: 1.0
    !
    !***********************************************************
    
    
    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of your program
    !
    !***********************************************************
    PROC main()
        !Add your code here
        Path_20;
    ENDPROC
    PROC Path_10()
        MoveL Target_30_2,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Target_30,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Target_40,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Target_40_2,v1000,z100,small_suction_gripper\WObj:=wobj0;
    ENDPROC
    PROC Path_20()
        
        Reset approached_object;
        Set drop_object;
        
        MoveL Overview_10,v300,z100,small_suction_gripper\WObj:=wobj0;
        SearchL \Stop, sensorBeepedUP, p4, Overview_10_2, v50, small_suction_gripper\WObj:=wobj0;
        p5 := p4;
        p5.trans.y := p5.trans.y-50;
        !p5.trans.z := p5.trans.z+100;
        p12 := p5;
        MoveL p5,v300,z100,small_suction_gripper\WObj:=wobj0;
        p7 := p5;
        p7.trans.x := p5.trans.x-300;
        
        SearchL \Stop,  sensorBeepedUP,\NegFlank, p6, p7, v50, small_suction_gripper\WObj:=wobj0;
        MoveL p5,v300,z100,small_suction_gripper\WObj:=wobj0;
        SearchL \Stop,  sensorBeepedUP,\NegFlank, p8, Overview_10_2, v50, small_suction_gripper\WObj:=wobj0;
        p10 := p5;
        p10.trans.x := p10.trans.x + 400;
        MoveL p5,v300,z100,small_suction_gripper\WObj:=wobj0;
        SearchL \Stop,  sensorBeepedUP,\NegFlank, p9, p10, v50, small_suction_gripper\WObj:=wobj0;
        
        p11 := p5;
        p11.trans.y := (p4.trans.y+p8.trans.y)/2 - y_vacuum_offset;
        p11.trans.x := (p6.trans.x+p9.trans.x)/2 - x_vacuum_offset;
        
        MoveL p11,v80,z100,small_suction_gripper\WObj:=wobj0;
        
        p11.trans.z := p11.trans.z - 38;
        MoveL p11,v300,z100,small_suction_gripper\WObj:=wobj0;
        
        WaitTime(5);
        Reset drop_object;
        Set approached_object;
        p12.trans.z := p12.trans.z+200;
        MoveL p12,v300,z100,small_suction_gripper\WObj:=wobj0;
        p13 := p12;
        p13.trans.x := p13.trans.x - 700;
        MoveL p13,v300,z100,small_suction_gripper\WObj:=wobj0;
        p14 := p13;
        p14.trans.z := p13.trans.z - 240.94;
        MoveL p14,v300,z100,small_suction_gripper\WObj:=wobj0;
        WaitTime(5);
        Reset approached_object;
        Set drop_object;
        
        MoveL p13,v300,z100,small_suction_gripper\WObj:=wobj0;
        
    ENDPROC
    PROC Seek_box()
        
        
    ENDPROC
ENDMODULE