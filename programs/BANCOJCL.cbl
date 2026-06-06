//BANCOJOB JOB (PROJ4),                                          
//             'CONTAS',                                         
//             CLASS=C,                                          
//             MSGCLASS=X,                                       
//             MSGLEVEL=(1,1),NOTIFY=HERC01                      
//*                                                              
//ORDENA   EXEC PGM=SORT                                         
//SORTLIB  DD DSN=SYS1.SORTLIB,DISP=SHR                          
//SYSOUT   DD SYSOUT=*                                           
//SYSPRINT DD SYSOUT=*                                           
//SORTIN   DD DSN=HERC01.PROJ4.CONTAS.TXT,DISP=SHR               
//SORTOUT  DD DSN=HERC01.PROJ4.CONTAS.ORD,DISP=OLD               
//SYSIN    DD *                                                  
  SORT FIELDS=(39,4,CH,A)                                        
/*                                                               
//*                                                              
//EXECUTA  EXEC COBUCG,PARM.COB='LOAD,LIB,SIZE=2048K,BUF=1024K'  
//COB.SYSPUNCH DD DUMMY                                          
//COB.SYSLIB DD DSN=HERC01.PROJ4.COPYBOOK,DISP=SHR               
//COB.SYSIN  DD DSN=HERC01.PROJ4.COBOL(PROCONTA),DISP=SHR        
//GO.ENTRADA DD DSN=HERC01.PROJ4.CONTAS.ORD,DISP=SHR,    
//             DCB=(RECFM=FB,LRECL=54,BLKSIZE=540)       
//GO.SYSOUT  DD SYSOUT=*                                 
