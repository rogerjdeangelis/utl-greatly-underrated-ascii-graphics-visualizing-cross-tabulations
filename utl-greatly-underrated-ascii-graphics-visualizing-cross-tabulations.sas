%let pgm =utl-greatly-underrated-ascii-graphics-visualizing-cross-tabulations;

Greatly underrated ascii graphics visualizing gross tabulations

github
https://tinyurl.com/5bmssxpb
https://github.com/rogerjdeangelis/utl-greatly-underrated-ascii-graphics-visualizing-cross-tabulations

Creating this with classic graph or sgplts would not be easy?

The 1980s classic editor is powerfull graphics editor.


The ascii graoh below requires quite a bit of editiing.
The table portion  id paticulary nice.

SOAPBOX ON
A table often conveys more information than a graph?
Is fancy graphics overused?
Everyone should read John Tukey's book 'Exploratory Data Analysis(EDA)
SOAPBOX OFF

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

CREATE THIS GRAPH

/**************************************************************************************************************************/
/*                                                                                                                        */
/*                                       Frequency                                                                        */
/*                                                                                                                        */
/*                       5    10   15   20   25   30   35                                                                 */
/* Drivetrain Type -----+----+----+----+----+----+----+------------------------------------+                              */
/*                 |                                                                       |                              */
/*                 | ALL WHEEL DRIVE                                    Cum.        Cum.   |                              */
/*                 |                                        Freq  Freq  Percent  Percent   |                              */
/*                 |-------------------------------------+                                 |                              */
/* All      SUV    | 38(27%)                             |    38    38    27.34    27.34   |  SUV    All                  */
/*                 |-------------------------------------+                                 |                              */
/*                 |-----+                                                                 |                              */
/*          Sports | 4(4%|                                     5    43     3.60    30.94   |  Sports                      */
/*                 |-----+                                                                 |                              */
/*                 |--------+                                                              |                              */
/*          Wagon  | 9(6%)  |                                  9    52     6.47    37.41   |  Wagon                       */
/*                 |--------+                                                              |                              */
/*                 |                                                                       |                              */
/*                 |-----------------------------------------------------------------------|                              */
/*                 |                                                                       |                              */
/*                 | FRONT WHEEL DRIVE                                                     |                              */
/*                 |                                                                       |                              */
/*                 |---------------------+                                                 |                              */
/* Front    SUV    | 22(16%)             |                    22    74    15.83    53.24   |  SUV    Front                */
/*                 |---------------------+                                                 |                              */
/*                 |-------+                                                               |                              */
/*          Sports | 8(6%) |                                   8    82     5.76    58.99   |  Sports                      */
/*                 |-------+                                                               |                              */
/*                 |-------------+                                                         |                              */
/*          Wagon  | 14(10%)     |                            14    96    10.07    69.06   |  Wagon                       */
/*                 |-------------+                                                         |                              */
/*                 |                                                                       |                              */
/*                 |-----------------------------------------------------------------------|                              */
/*                 |                                                                       |                              */
/*                 | REAR WHEEL DRIVE                                                      |                              */
/*                 |                                                                       |                              */
/* Rear     SUV    | 0(0%)                                     0    96     0.00    69.06   |  SUV    Rear                 */
/*                 |                                                                       |                              */
/*                 |-----------------------------------+                                   |                              */
/*          Sports | 36(26%)                           |      36   132    25.90    94.96   |  Sports                      */
/*                 |-----------------------------------+                                   |                              */
/*                 |------+                                                                |                              */
/*          Wagon  | 7(5%)|                                    7   139     5.04   100.00   |  Wagon                       */
/*                 |------+                                                                |                              */
/*                 |                                                                       |                              */
/*                 -----+----+----+----+----+----+----+------------------------------------+                              */
/*                      5    10   15   20   25   30   35                                                                  */
/*                                                                                                                        */
/*                                      Frequency                                                                         */
/*                                                                                                                        */
/**************************************************************************************************************************/


/*                   _      ___
(_)_ __  _ __  _   _| |_   ( _ )    _ __  _ __ ___   ___ ___  ___ ___
| | `_ \| `_ \| | | | __|  / _ \/\ | `_ \| `__/ _ \ / __/ _ \/ __/ __|
| | | | | |_) | |_| | |_  | (_>  < | |_) | | | (_) | (_|  __/\__ \__ \
|_|_| |_| .__/ \__,_|\__|  \___/\/ | .__/|_|  \___/ \___\___||___/___/
        |_|                        |_|
*/

options ls=120 ps=44;
proc chart data=sashelp.cars(where=(type not in ("Hybrid","Sedan","Truck")));
hbar type /discrete subgroup=drivetrain group=drivetrain;
run;quit;

/**************************************************************************************************************************/  
/*                                                                                                                        */ 
/* You need to edit this                                                                                                  */ 
/*                                                                                                                        */ 
/* DRIVETRAIN   TYPE                                                    Cum.              Cum.                            */ 
/*                                                                Freq  Freq  Percent  Percent                            */
/*                       |                                                                                                */ 
/* All          SUV      |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA    38    38    27.34    27.34                            */ 
/*              Sports   |AAAAA                                      5    43     3.60    30.94                            */ 
/*              Wagon    |AAAAAAAAA                                  9    52     6.47    37.41                            */ 
/*                       |                                                                                                */ 
/* Front        SUV      |FFFFFFFFFFFFFFFFFFFFFF                    22    74    15.83    53.24                            */ 
/*              Sports   |FFFFFFFF                                   8    82     5.76    58.99                            */ 
/*              Wagon    |FFFFFFFFFFFFFF                            14    96    10.07    69.06                            */ 
/*                       |                                                                                                */ 
/* Rear         SUV      |                                           0    96     0.00    69.06                            */ 
/*              Sports   |RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR      36   132    25.90    94.96                            */ 
/*              Wagon    |RRRRRRR                                    7   139     5.04   100.00                            */ 
/*                       |                                                                                                */ 
/*                       -----+----+----+----+----+----+----+---                                                          */ 
/*                            5    10   15   20   25   30   35                                                            */ 
/*                                                                                                                        */ 
/*                                      Frequency                                                                         */ 
/*                                                                                                                        */ 
/*                                                                                                                        */ 
/* Symbol DRIVETRAIN     Symbol DRIVETRAIN     Symbol DRIVETRAIN                                                          */ 
/*                                                                                                                        */ 
/*    A   All               F   Front             R   Rear                                                                */ 
/*                                                                                                                        */ 
/**************************************************************************************************************************/ 


options ls=120 ps=44;
proc chart data=sashelp.cars(where=(type not in ("Hybrid","Sedan","Truck")));
hbar type /discrete subgroup=drivetrain group=drivetrain g100;
run;quit;


/**************************************************************************************************************************/
/*                                                                                                                        */
/* COUNTS AND PERCENTS WITHIN DRIVETRAIN                                                                                  */
/*                                                                                                                        */
/* DRIVETRAIN   TYPE                                                    Cum.              Cum.                            */
/*                                                                Freq  Freq  Percent  Percent                            */
/*                       |                                                                                                */
/* All          SUV      |AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA    38    38    73.08    73.08                            */
/*              Sports   |AAAAA                                      5    43     9.62    82.69                            */
/*              Wagon    |AAAAAAAAA                                  9    52    17.31   100.00 ==> 100 percent            */
/*                       |                                                                                                */
/* Front        SUV      |FFFFFFFFFFFFFFFFFFFFFF                    22    22    50.00    50.00                            */
/*              Sports   |FFFFFFFF                                   8    30    18.18    68.18                            */
/*              Wagon    |FFFFFFFFFFFFFF                            14    44    31.82   100.00 ==> 100 percent            */
/*                       |                                                                                                */
/* Rear         SUV      |                                           0     0     0.00     0.00                            */
/*              Sports   |RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR      36    36    83.72    83.72                            */
/*              Wagon    |RRRRRRR                                    7    43    16.28   100.00 ==> 100 percent            */
/*                       |                                                                                                */
/*                       -----+----+----+----+----+----+----+---                                                          */
/*                            5    10   15   20   25   30   35                                                            */
/*                                                                                                                        */
/*                                      Frequency                                                                         */
/*                                                                                                                        */
/*                                                                                                                        */
/* Symbol DRIVETRAIN     Symbol DRIVETRAIN     Symbol DRIVETRAIN                                                          */
/*                                                                                                                        */
/*    A   All               F   Front             R   Rear                                                                */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
