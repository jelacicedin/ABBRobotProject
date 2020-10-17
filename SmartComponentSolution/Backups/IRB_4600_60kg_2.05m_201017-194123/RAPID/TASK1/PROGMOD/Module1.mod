MODULE Module1
        CONST robtarget Target_30_2:=[[-237.219768702,866.283675835,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[716.121686162,335.077687596,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[1057.065915871,-17.60100368,500],[0,1,0,0],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40_2:=[[277.117965124,-17.60100368,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10:=[[-345.337592383,-634.2218361,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_2:=[[-345.337592383,-1509.837410954,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_3:=[[12.284555899,-1493.428131522,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_4:=[[11.425088297,-611.443739064,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_5:=[[353.203433771,-634.2218361,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_6:=[[379.156403723,-1514.983024916,431.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
        MoveL Overview_10,v80,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Overview_10_2,v80,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Overview_10_3,v80,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Overview_10_4,v80,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Overview_10_5,v80,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Overview_10_6,v80,z100,small_suction_gripper\WObj:=wobj0;
    ENDPROC
ENDMODULE