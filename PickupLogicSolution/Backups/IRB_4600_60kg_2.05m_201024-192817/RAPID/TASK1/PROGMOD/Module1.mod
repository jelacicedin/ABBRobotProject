MODULE Module1
    CONST robtarget Target_30_2:=[[-237.219768702,866.283675835,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[716.121686162,335.077687596,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[1057.065915871,-17.60100368,500],[0,1,0,0],[0,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40_2:=[[277.117965124,-17.60100368,500],[0,1,0,0],[0,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10:=[[-345.337592383,-634.2218361,531.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_2:=[[-345.337592383,-1509.837410954,531.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_3:=[[12.284555899,-1493.428131522,531.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_4:=[[11.425088297,-611.443739064,531.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_5:=[[353.203433771,-634.2218361,531.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Overview_10_6:=[[379.156403723,-1514.983024916,531.52658222],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST num x_vacuum_offset := 1097.85-1100.6;
    CONST num y_vacuum_offset := 197.02-246.02;
    
    VAR robtarget overviewPointsArray{36};
    VAR num arraySize := 0;
    VAR num currentArraySize := 0;
    VAR bool pointFound := FALSE;
    
    VAR robtarget pointToGoToIfSearchFails;
    VAR robtarget centerPointsArray{9};
    VAR num centersSize := 0;
    VAR num currentCentersSize := 0;

    VAR num previousBest;
    VAR robtarget temp1 := [[0,0,0],[0,0,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget temp;
    VAR pose frame1;
    
    VAR robtarget topLevelPoints{36};
    VAR num topSize := 0;
    VAR num currentTopSize := 0;
    
    CONST robtarget T1:=[[-252.987593195,-794.399358017,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T2:=[[-252.987593195,-1570.633594251,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T3:=[[8.712152916,-1576.575411719,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T4:=[[21.135985431,-794.399358017,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T5:=[[298.25164601,-794.399358017,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T6:=[[299.291675427,-1629.961321583,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T7:=[[488.182496173,-1368.656101944,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T8:=[[-427.404409552,-1368.656101944,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T9:=[[-430.017670434,-1199.600999294,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T10:=[[488.182496173,-1184.286468635,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T11:=[[488.182496173,-960.24487092,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T12:=[[-404.863695876,-989.636978284,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget HelpPoint := [[299.291675427,-1629.961321583,415.526565821],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
!***********************************************************
    !
    ! Module:  Module1
    !
    ! Description:
    !   Line search pick and place operations
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
        Path_Scanning;
        Path_20;
            
    ENDPROC
    
    PROC initArray()
    currentArraySize := 0;
    ENDPROC
    
    PROC insertPoint(robtarget point)
    currentArraySize := currentArraySize +1;
    overviewPointsArray{currentArraySize} := point;        
    ENDPROC
    

    
    PROC Path_10()
        MoveL Target_30_2,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Target_30,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Target_40,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL Target_40_2,v1000,z100,small_suction_gripper\WObj:=wobj0;
    ENDPROC
    PROC Path_20()
        MoveL T1,v80,z100,small_suction_gripper\WObj:=wobj0;
        
        
        
        
    ENDPROC
    PROC Seek_box()
        
        
    ENDPROC
    PROC Path_Overview()
        MoveL T1,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T2,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T3,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T4,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T5,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T6,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T7,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T8,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T9,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T10,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T11,v1000,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T12,v1000,z100,small_suction_gripper\WObj:=wobj0;
    ENDPROC
    PROC Seek_next_posflank(robtarget t)
        temp := temp1;
        SearchL \SStop, sensorBeepedUP,\PosFlank, temp, t, v100, small_suction_gripper\WObj:=wobj0;
            IF temp.trans.x <> 0 THEN
                insertPoint(temp);
                pointFound := TRUE; 
                TPWrite "Added a point successfully";
            ENDIF
        temp := temp1;
        pointFound := FALSE;
        ERROR (ERR_WHLSEARCH)
            IF ERRNO=ERR_WHLSEARCH THEN
                MoveL t,v100,z100,small_suction_gripper\WObj:=wobj0;
                RETURN;
            ENDIF
    ENDPROC
    PROC Seek_next_negflank(robtarget t)
        temp := temp1;
        SearchL \SStop, sensorBeepedUP,\NegFlank, temp, t, v100, small_suction_gripper\WObj:=wobj0;
            IF temp.trans.x <> 0 THEN
                insertPoint(temp);
                TPWrite "Added a point successfully";
                pointFound := TRUE; 
            ENDIF
        temp := temp1;
        pointFound := FALSE;
        ERROR (ERR_WHLSEARCH)
            IF ERRNO=ERR_WHLSEARCH THEN
                MoveL t,v100,z100,small_suction_gripper\WObj:=wobj0;
                RETURN;
            ENDIF
    ENDPROC
    
    PROC IsolateOnlyTop()    
        VAR num highestPoint := 0;
        FOR i FROM 1 TO currentArraySize DO
            IF overviewPointsArray{i}.trans.z > highestPoint THEN
                highestPoint := overviewPointsArray{i}.trans.z;
            ENDIF           
        ENDFOR
        ! Now we know the highest target and we can move onto the part where we isolate only those into the top level of targets
        FOR i FROM 1 TO currentArraySize DO
            IF overviewPointsArray{i}.trans.z = highestPoint THEN
                topLevelPoints{currentTopSize} := overviewPointsArray{i};
                currentTopSize := currentTopSize + 1;
            ENDIF           
        ENDFOR
    ENDPROC
    
    
    PROC Path_Scanning()
        MoveL T1,v100,z100,small_suction_gripper\WObj:=wobj0;
        
          
        Seek_next_posflank(T2);
        Seek_next_negflank(T2);
        
        Seek_next_posflank(T2);
        Seek_next_negflank(T2);
        
        Seek_next_posflank(T2);
        Seek_next_negflank(T2);

        
        MoveL T3,v100,z100,small_suction_gripper\WObj:=wobj0;
        
        Seek_next_posflank(T4);
        Seek_next_negflank(T4);
        
        Seek_next_posflank(T4);
        Seek_next_negflank(T4);
        
        Seek_next_posflank(T4);
        Seek_next_negflank(T4);
        
        MoveL T5,v100,z100,small_suction_gripper\WObj:=wobj0;
        
        Seek_next_posflank(T6);
        Seek_next_negflank(T6);
        
        Seek_next_posflank(T6);
        Seek_next_negflank(T6);
        
        Seek_next_posflank(T6);
        Seek_next_negflank(T6);
        
        MoveL HelpPoint,v100,z100,small_suction_gripper\WObj:=wobj0;
        MoveL T7,v100,z100,small_suction_gripper\WObj:=wobj0;
        
        Seek_next_posflank(T8);
        Seek_next_negflank(T8);
        
        Seek_next_posflank(T8);
        Seek_next_negflank(T8);
        
        Seek_next_posflank(T8);
        Seek_next_negflank(T8);
        
        MoveL T9,v100,z100,small_suction_gripper\WObj:=wobj0;
        
        Seek_next_posflank(T10);
        Seek_next_negflank(T10);
        
        Seek_next_posflank(T10);
        Seek_next_negflank(T10);
        
        Seek_next_posflank(T10);
        Seek_next_negflank(T10);
        
        MoveL T11,v100,z100,small_suction_gripper\WObj:=wobj0;
        
        Seek_next_posflank(T12);
        Seek_next_negflank(T12);
        
        Seek_next_posflank(T12);
        Seek_next_negflank(T12);
        
        Seek_next_posflank(T12);
        Seek_next_negflank(T12);
        
    

        ! Now we isolate only the top boxes and lift those first
        
        
        
        ERROR (ERR_WHLSEARCH)
            IF ERRNO=ERR_WHLSEARCH THEN
                MoveL T2,v100,z100,small_suction_gripper\WObj:=wobj0;
                StartMoveRetry;
                !StorePath;
            ENDIF
    ENDPROC
    
ENDMODULE