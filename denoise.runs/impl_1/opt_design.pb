
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu3eg2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu3eg2default:defaultZ17-349h px? 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px? 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px? 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:00:02 . Memory (MB): peak = 1707.574 ; gain = 17.0002default:defaulth px? 
g

Starting %s Task
103*constraints2,
Cache Timing Information2default:defaultZ18-103h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
;Ending Cache Timing Information Task | Checksum: 13b7c110d
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:23 ; elapsed = 00:00:15 . Memory (MB): peak = 2097.930 ; gain = 390.2232default:defaulth px? 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px? 
i

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101h px? 
y
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
22default:default2
125662default:defaultZ31-138h px? 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px? 
;
&Phase 1 Retarget | Checksum: 96abb6cd
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:08 . Memory (MB): peak = 2346.371 ; gain = 0.1992default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Retarget2default:default2
02default:default2
22default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Retarget2default:default2
1682default:defaultZ31-1021h px? 
u

Phase %s%s
101*constraints2
2 2default:default2(
Constant propagation2default:defaultZ18-101h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
G
2Phase 2 Constant propagation | Checksum: bb694932
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:08 . Memory (MB): peak = 2346.371 ; gain = 0.1992default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2(
Constant propagation2default:default2
02default:default2
02default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2(
Constant propagation2default:default2
1662default:defaultZ31-1021h px? 
f

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101h px? 
?
?Instance %s has been optimized to an empty box cell during %s but it has constraints that prevent its removal. Empty box cells do not impact the implementation flow but they have no functional relevance.92*opt2E
u_conv/u_acc_post (acc_post)	u_conv/u_acc_post2default:default2
sweep2default:default8Z31-120h px? 
?
?Instance %s has been optimized to an empty box cell during %s but it has constraints that prevent its removal. Empty box cells do not impact the implementation flow but they have no functional relevance.92*opt2N
"u_conv/u_accumulator (accumulator)	u_conv/u_accumulator2default:default2
sweep2default:default8Z31-120h px? 
?
?Instance %s has been optimized to an empty box cell during %s but it has constraints that prevent its removal. Empty box cells do not impact the implementation flow but they have no functional relevance.92*opt2B
u_conv/u_conv_rp (conv_rp)	u_conv/u_conv_rp2default:default2
sweep2default:default8Z31-120h px? 
?
?Instance %s has been optimized to an empty box cell during %s but it has constraints that prevent its removal. Empty box cells do not impact the implementation flow but they have no functional relevance.92*opt2H
u_conv/u_mul_array (mul_array)	u_conv/u_mul_array2default:default2
sweep2default:default8Z31-120h px? 
?
?Instance %s has been optimized to an empty box cell during %s but it has constraints that prevent its removal. Empty box cells do not impact the implementation flow but they have no functional relevance.92*opt2B
u_conv/u_pre_cal (pre_cal)	u_conv/u_pre_cal2default:default2
sweep2default:default8Z31-120h px? 
?
?Instance %s has been optimized to an empty box cell during %s but it has constraints that prevent its removal. Empty box cells do not impact the implementation flow but they have no functional relevance.92*opt2B
u_conv/u_pre_cal (pre_cal)	u_conv/u_pre_cal2default:default2
sweep2default:default8Z31-120h px? 
?
?Instance %s has been optimized to an empty box cell during %s but it has constraints that prevent its removal. Empty box cells do not impact the implementation flow but they have no functional relevance.92*opt2E
u_result_block/u_r (result)	u_result_block/u_r2default:default2
sweep2default:default8Z31-120h px? 
8
#Phase 3 Sweep | Checksum: 849de373
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 2346.371 ; gain = 0.1992default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2
Sweep2default:default2
02default:default2
474842default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2
Sweep2default:default2
40052default:defaultZ31-1021h px? 
r

Phase %s%s
101*constraints2
4 2default:default2%
BUFG optimization2default:defaultZ18-101h px? 
?
PPhase BUFG optimization inserted %s global clock buffer(s) for CLOCK_LOW_FANOUT.553*opt2
02default:defaultZ31-1077h px? 
D
/Phase 4 BUFG optimization | Checksum: 849de373
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 2346.371 ; gain = 0.1992default:defaulth px? 
?
EPhase %s created %s cells of which %s are BUFGs and removed %s cells.395*opt2%
BUFG optimization2default:default2
02default:default2
02default:default2
02default:defaultZ31-662h px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Shift Register Optimization2default:defaultZ18-101h px? 
?
dSRL Remap converted %s SRLs to %s registers and converted %s registers of register chains to %s SRLs546*opt2
02default:default2
02default:default2
02default:default2
02default:defaultZ31-1064h px? 
N
9Phase 5 Shift Register Optimization | Checksum: 849de373
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 2346.371 ; gain = 0.1992default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2/
Shift Register Optimization2default:default2
02default:default2
02default:defaultZ31-389h px? 
x

Phase %s%s
101*constraints2
6 2default:default2+
Post Processing Netlist2default:defaultZ18-101h px? 
J
5Phase 6 Post Processing Netlist | Checksum: 849de373
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 2346.371 ; gain = 0.1992default:defaulth px? 
?
.Phase %s created %s cells and removed %s cells267*opt2+
Post Processing Netlist2default:default2
02default:default2
02default:defaultZ31-389h px? 
?
?In phase %s, %s netlist objects are constrained preventing optimization. Please run opt_design with -debug_log to get more detail. 510*opt2+
Post Processing Netlist2default:default2
4092default:defaultZ31-1021h px? 
/
Opt_design Change Summary
*commonh px? 
/
=========================
*commonh px? 


*commonh px? 


*commonh px? 
?
z-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Phase                        |  #Cells created  |  #Cells Removed  |  #Constrained objects preventing optimizations  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Retarget                     |               0  |               2  |                                            168  |
|  Constant propagation         |               0  |               0  |                                            166  |
|  Sweep                        |               0  |           47484  |                                           4005  |
|  BUFG optimization            |               0  |               0  |                                              0  |
|  Shift Register Optimization  |               0  |               0  |                                              0  |
|  Post Processing Netlist      |               0  |               0  |                                            409  |
-------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.016 . Memory (MB): peak = 2346.371 ; gain = 0.0002default:defaulth px? 
J
5Ending Logic Optimization Task | Checksum: 11bf9888e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:19 ; elapsed = 00:00:16 . Memory (MB): peak = 2346.371 ; gain = 0.1992default:defaulth px? 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px? 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px? 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 


*pwropth px? 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px? 
?
?WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
02default:default2
182default:defaultZ34-162h px? 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
12default:defaultZ34-201h px? 
?
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
02default:default2
22default:default2
362default:defaultZ34-65h px? 
M
8Ending PowerOpt Patch Enables Task | Checksum: ea35fe69
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.136 . Memory (MB): peak = 2672.984 ; gain = 0.0002default:defaulth px? 
I
4Ending Power Optimization Task | Checksum: ea35fe69
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:12 ; elapsed = 00:00:11 . Memory (MB): peak = 2672.984 ; gain = 326.6132default:defaulth px? 
\

Starting %s Task
103*constraints2!
Final Cleanup2default:defaultZ18-103h px? 
D
/Ending Final Cleanup Task | Checksum: ea35fe69
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:00:00 . Memory (MB): peak = 2672.984 ; gain = 0.0002default:defaulth px? 
b

Starting %s Task
103*constraints2'
Netlist Obfuscation2default:defaultZ18-103h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2672.9842default:default2
0.0002default:defaultZ17-268h px? 
J
5Ending Netlist Obfuscation Task | Checksum: ba6bf336
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.001 . Memory (MB): peak = 2672.984 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:01:022default:default2
00:00:482default:default2
2672.9842default:default2
982.4102default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2^
JC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1/ccnn_top_opt.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2~
jExecuting : report_drc -file ccnn_top_drc_opted.rpt -pb ccnn_top_drc_opted.pb -rpx ccnn_top_drc_opted.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2q
]report_drc -file ccnn_top_drc_opted.rpt -pb ccnn_top_drc_opted.pb -rpx ccnn_top_drc_opted.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
PC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1/ccnn_top_drc_opted.rptPC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1/ccnn_top_drc_opted.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:262default:default2
00:00:252default:default2
3695.2542default:default2
1022.2702default:defaultZ17-268h px? 


End Record