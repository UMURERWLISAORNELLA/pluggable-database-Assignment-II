
SQL> create pluggable database plsql_class2024db admin user li_plsqlauca identified by admin
  2  FILE_NAME_CONVERT = ('F:\app\PC\product\21c\oradata\XE\pdbseed\','F:\app\PC\product\21c\oradata\XE\ plsql_class2024db');

Pluggable database created.

SQL> create pluggable database li_to_delete_pdb admin user li_plsqlauca identified by admin
  2  FILE_NAME_CONVERT = ('F:\app\PC\product\21c\oradata\XE\pdbseed\','F:\app\PC\product\21c\oradata\XE\ li_to_delete_pdb');


Pluggable database created.

SQL> create pluggable database um_to_delete_pdb admin user li_plsqlauca identified by admin
  2  FILE_NAME_CONVERT = ('F:\app\PC\product\21c\oradata\XE\pdbseed\','F:\app\PC\product\21c\oradata\XE\ um_to_delete_pdb');

Pluggable database created.



SQL> alter pluggable database UM_TO_DELETE_PDB open;

Pluggable database altered.

SQL> ALTER PLUGGABLE DATABASE UM_TO_DELETE_PDB CLOSE IMMEDIATE ;

Pluggable database altered.


SQL>  show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 XEPDB1                         READ WRITE NO
         4 PLSQL_CLASS2024DB              MOUNTED
         5 LI_TO_DELETE_PDB               MOUNTED
         6 UM_TO_DELETE_PDB               MOUNTED
SQL> DROP PLUGGABLE DATABASE UM_TO_DELETE_PDB INCLUDING DATAFILES;

Pluggable database dropped.



SQL> show pdbs;

    CON_ID CON_NAME                       OPEN MODE  RESTRICTED
---------- ------------------------------ ---------- ----------
         2 PDB$SEED                       READ ONLY  NO
         3 XEPDB1                         READ WRITE NO
         4 PLSQL_CLASS2024DB              MOUNTED
         5 LI_TO_DELETE_PDB               MOUNTED

SQL>