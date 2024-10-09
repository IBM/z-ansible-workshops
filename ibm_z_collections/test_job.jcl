//ANSIBLE  JOB 'ANSIBLE TEST JOB',
//             CLASS=A,
//             MSGCLASS=H,
//             MSGLEVEL=(1,1),
//             NOTIFY=&SYSUID
//*
//********************************************************************
//* This is a sample JCL that could be used with the Ansible playbook
//* It performs a few simple tasks:
//* 1. Runs IEFBR14 to test job submission
//* 2. Allocates a new dataset
//* 3. Writes a message to SYSPRINT
//********************************************************************
//*
//STEP1    EXEC PGM=IEFBR14
//*
//STEP2    EXEC PGM=IEFBR14
//SYSPRINT DD  SYSOUT=*
//SYSUT2   DD  DSN=&SYSUID..ANSIBLE.TEST.SAMPLEDS,
//             DISP=(NEW,CATLG,DELETE),
//             SPACE=(TRK,(5,5,2))
//*
//STEP3    EXEC PGM=IEBGENER
//SYSPRINT DD  SYSOUT=*
//SYSIN    DD  DUMMY
//SYSUT1   DD  *
This is a test message from the Ansible-submitted JCL.
The job ran successfully if you can see this message.
//SYSUT2   DD  SYSOUT=*
//*
