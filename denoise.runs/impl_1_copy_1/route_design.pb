
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common22
Nodegraph reading from file.  2default:default2
00:00:012default:default2 
00:00:00.9682default:default2
4159.3792default:default2
0.0002default:defaultZ17-268h px? 
B
-Phase 1 Build RT Design | Checksum: e273294b
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:13 ; elapsed = 00:00:11 . Memory (MB): peak = 4159.379 ; gain = 0.0002default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 196c6bd45
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:15 ; elapsed = 00:00:12 . Memory (MB): peak = 4159.379 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 196c6bd45
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:15 ; elapsed = 00:00:13 . Memory (MB): peak = 4160.082 ; gain = 0.7032default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 196c6bd45
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:15 ; elapsed = 00:00:13 . Memory (MB): peak = 4160.082 ; gain = 0.7032default:defaulth px? 
{

Phase %s%s
101*constraints2
2.4 2default:default2,
Global Clock Net Routing2default:defaultZ18-101h px? 
M
8Phase 2.4 Global Clock Net Routing | Checksum: b831f387
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:18 ; elapsed = 00:00:15 . Memory (MB): peak = 4186.676 ; gain = 27.2972default:defaulth px? 
p

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.5 Update Timing | Checksum: 1d5f2c632
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:01:08 ; elapsed = 00:00:44 . Memory (MB): peak = 4186.676 ; gain = 27.2972default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=1.392  | TNS=0.000  | WHS=-0.046 | THS=-2.674 |
2default:defaultZ35-416h px? 
}

Phase %s%s
101*constraints2
2.6 2default:default2.
Update Timing for Bus Skew2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
2.6.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 2.6.1 Update Timing | Checksum: 13b9372d5
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:21 ; elapsed = 00:01:26 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=1.392  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
P
;Phase 2.6 Update Timing for Bus Skew | Checksum: 1315cf8ba
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:22 ; elapsed = 00:01:27 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
I
4Phase 2 Router Initialization | Checksum: 166abc322
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:22 ; elapsed = 00:01:27 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 166abc322
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:24 ; elapsed = 00:01:28 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 223a521ba
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:45 ; elapsed = 00:01:41 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.419  | TNS=0.000  | WHS=-0.008 | THS=-0.014 |
2default:defaultZ35-416h px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1ed2012ba
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:00 ; elapsed = 00:05:50 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.419  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 239477657
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:15 ; elapsed = 00:05:59 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 239477657
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:15 ; elapsed = 00:06:00 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 1a79e4f4f
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:36 ; elapsed = 00:06:12 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.419  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 1f95b7cd2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:36 ; elapsed = 00:06:13 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 1f95b7cd2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:36 ; elapsed = 00:06:13 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 1f95b7cd2
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:37 ; elapsed = 00:06:13 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 225d20bad
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:55 ; elapsed = 00:06:24 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=0.419  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 278fadcb3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:56 ; elapsed = 00:06:25 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 278fadcb3
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:56 ; elapsed = 00:06:25 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 20e92c001
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:57 ; elapsed = 00:06:26 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 20e92c001
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:08:57 ; elapsed = 00:06:26 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 20e92c001
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:06 ; elapsed = 00:06:37 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
o

Phase %s%s
101*constraints2
10 2default:default2!
Resolve XTalk2default:defaultZ18-101h px? 
B
-Phase 10 Resolve XTalk | Checksum: 20e92c001
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:07 ; elapsed = 00:06:38 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
t

Phase %s%s
101*constraints2
11 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=0.419  | TNS=0.000  | WHS=0.010  | THS=0.000  |
2default:defaultZ35-57h px? 
?
?The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px? 
G
2Phase 11 Post Router Timing | Checksum: 20e92c001
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:17 ; elapsed = 00:06:43 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:09:17 ; elapsed = 00:06:44 . Memory (MB): peak = 4262.086 ; gain = 102.7072default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1732default:default2
232default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:09:512default:default2
00:07:022default:default2
4262.0862default:default2
124.0432default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:322default:default2
00:00:112default:default2
4262.0862default:default2
0.0002default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2,
report_design_analysis: 2default:default2
00:00:122default:default2
00:00:122default:default2
4262.0862default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2h
TC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1_copy_1/ccnn_top_routed.dcp2default:defaultZ17-1381h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:552default:default2
00:00:332default:default2
4262.0862default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
mExecuting : report_drc -file ccnn_top_drc_routed.rpt -pb ccnn_top_drc_routed.pb -rpx ccnn_top_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2t
`report_drc -file ccnn_top_drc_routed.rpt -pb ccnn_top_drc_routed.pb -rpx ccnn_top_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
XC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1_copy_1/ccnn_top_drc_routed.rptXC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1_copy_1/ccnn_top_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:572default:default2
00:00:312default:default2
4262.0862default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file ccnn_top_methodology_drc_routed.rpt -pb ccnn_top_methodology_drc_routed.pb -rpx ccnn_top_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file ccnn_top_methodology_drc_routed.rpt -pb ccnn_top_methodology_drc_routed.pb -rpx ccnn_top_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
dC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1_copy_1/ccnn_top_methodology_drc_routed.rptdC:/Users/wwwka/Desktop/my_cnn/denoise/denoise.runs/impl_1_copy_1/ccnn_top_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2(
report_methodology: 2default:default2
00:00:472default:default2
00:00:262default:default2
4262.0862default:default2
0.0002default:defaultZ17-268h px? 
?
%s4*runtcl2?
}Executing : report_power -file ccnn_top_power_routed.rpt -pb ccnn_top_power_summary_routed.pb -rpx ccnn_top_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
preport_power -file ccnn_top_power_routed.rpt -pb ccnn_top_power_summary_routed.pb -rpx ccnn_top_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1852default:default2
232default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:542default:default2
00:00:342default:default2
4267.5202default:default2
5.4342default:defaultZ17-268h px? 
?
%s4*runtcl2q
]Executing : report_route_status -file ccnn_top_route_status.rpt -pb ccnn_top_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -file ccnn_top_timing_summary_routed.rpt -pb ccnn_top_timing_summary_routed.pb -rpx ccnn_top_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: I, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
}There are set_bus_skew constraint(s) in this design. Please run report_bus_skew to ensure that bus skew requirements are met.223*timingZ38-436h px? 
?
%s4*runtcl2e
QExecuting : report_incremental_reuse -file ccnn_top_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2e
QExecuting : report_clock_utilization -file ccnn_top_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file ccnn_top_bus_skew_routed.rpt -pb ccnn_top_bus_skew_routed.pb -rpx ccnn_top_bus_skew_routed.rpx
2default:defaulth px? 
?
UpdateTimingParams:%s.
91*timing2O
; Speed grade: -2, Temperature grade: I, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record