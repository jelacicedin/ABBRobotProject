MODULE Module1
        CONST robtarget Target_20:=[[1831.863,-195.844947055,-179.285709531],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[1898.989,-723.871947055,0.000290469],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[1898.989,-723.871947055,-256.499709531],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60:=[[-136.901402126,12.699884711,-0.000577776],[0,0,0.925076886,0.379779878],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[1898.989,216.715052945,-255.022709531],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_3:=[[1898.989,-723.871947055,0.000290469],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_2:=[[1898.989,216.715052945,0.000290469],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3:=[[1831.863,-195.844947055,514.351755884],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_4:=[[1831.863,-1064.881110195,-179.285709531],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20_3_2:=[[1831.863,-1071.241124521,514.351755884],[0,1,0,0],[-1,0,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
    ENDPROC
    PROC Path_10()
        MoveL Target_20,v100,fine,small_suction_gripper\WObj:=wobj0;
        PulseDO att_box;
        WaitTime 1;
        MoveL Target_20_3,v100,fine,small_suction_gripper\WObj:=wobj0;
        MoveL Target_20_3_2,v600,z5,small_suction_gripper\WObj:=wobj0;
        MoveL Target_20_4,v100,fine,small_suction_gripper\WObj:=wobj0;
        PulseDO det_box;
        WaitTime 1;
        MoveL Target_20_3_2,v100,fine,small_suction_gripper\WObj:=wobj0;
        MoveL Target_20_3,v600,z5,small_suction_gripper\WObj:=wobj0;
        MoveL Target_20,v600,z5,small_suction_gripper\WObj:=wobj0;
    ENDPROC
ENDMODULE