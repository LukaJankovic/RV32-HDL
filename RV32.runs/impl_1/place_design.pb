
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px? 
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
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px? 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611h px? 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px? 
?

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1858.7462default:default2
0.0002default:defaultZ17-268h px? 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 45e994f4
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.009 . Memory (MB): peak = 1858.746 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1858.7462default:default2
0.0002default:defaultZ17-268h px? 
?

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px? 
?U
?IO placement is infeasible. Number of unplaced IO Ports (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
1322default:default2
1252default:default2?S
?8
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 125 sites available on device, but needs 132 sites.
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>POP[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>POP[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>POP[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WE<MSGMETA::END>

"?
PADDR[0]2?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 125 sites available on device, but needs 132 sites.
	Term: :
	Term: "
PADDR[1]:
	Term: "
PADDR[2]:
	Term: "
PADDR[3]:
	Term: "
PADDR[4]:
	Term: "
PADDR[5]:
	Term: "
PADDR[6]:
	Term: "
PADDR[7]:
	Term: "
PADDR[8]:
	Term: "
PADDR[9]:
	Term: "
	PADDR[10]:
	Term: "
	PADDR[11]:
	Term: "
	PADDR[12]:
	Term: "
	PADDR[13]:
	Term: "
	PADDR[14]:
	Term: "
	PADDR[15]:
	Term: "
	PADDR[16]:
	Term: "
	PADDR[17]:
	Term: "
	PADDR[18]:
	Term: "
	PADDR[19]:
	Term: "
	PADDR[20]:
	Term: "
	PADDR[21]:
	Term: "
	PADDR[22]:
	Term: "
	PADDR[23]:
	Term: "
	PADDR[24]:
	Term: "
	PADDR[25]:
	Term: "
	PADDR[26]:
	Term: "
	PADDR[27]:
	Term: "
	PADDR[28]:
	Term: "
	PADDR[29]:
	Term: "
	PADDR[30]:
	Term: "
	PADDR[31]:
	Term: "
	PC_OUT[0]:
	Term: "
	PC_OUT[1]:
	Term: "
	PC_OUT[2]:
	Term: "
	PC_OUT[3]:
	Term: "
	PC_OUT[4]:
	Term: "
	PC_OUT[5]:
	Term: "
	PC_OUT[6]:
	Term: "
	PC_OUT[7]:
	Term: "
	PC_OUT[8]:
	Term: "
	PC_OUT[9]:
	Term: "

PC_OUT[10]:
	Term: "

PC_OUT[11]:
	Term: "

PC_OUT[12]:
	Term: "

PC_OUT[13]:
	Term: "

PC_OUT[14]:
	Term: "

PC_OUT[15]:
	Term: "

PC_OUT[16]:
	Term: "

PC_OUT[17]:
	Term: "

PC_OUT[18]:
	Term: "

PC_OUT[19]:
	Term: "

PC_OUT[20]:
	Term: "

PC_OUT[21]:
	Term: "

PC_OUT[22]:
	Term: "

PC_OUT[23]:
	Term: "

PC_OUT[24]:
	Term: "

PC_OUT[25]:
	Term: "

PC_OUT[26]:
	Term: "

PC_OUT[27]:
	Term: "

PC_OUT[28]:
	Term: "

PC_OUT[29]:
	Term: "

PC_OUT[30]:
	Term: "

PC_OUT[31]:
	Term: "
WADDR[0]:
	Term: "
WADDR[1]:
	Term: "
WADDR[2]:
	Term: "
WADDR[3]:
	Term: "
WADDR[4]:
	Term: "
WADDR[5]:
	Term: "
WADDR[6]:
	Term: "
WADDR[7]:
	Term: "
WADDR[8]:
	Term: "
WADDR[9]:
	Term: "
	WADDR[10]:
	Term: "
	WADDR[11]:
	Term: "
	WADDR[12]:
	Term: "
	WADDR[13]:
	Term: "
	WADDR[14]:
	Term: "
	WADDR[15]:
	Term: "
	WADDR[16]:
	Term: "
	WADDR[17]:
	Term: "
	WADDR[18]:
	Term: "
	WADDR[19]:
	Term: "
	WADDR[20]:
	Term: "
	WADDR[21]:
	Term: "
	WADDR[22]:
	Term: "
	WADDR[23]:
	Term: "
	WADDR[24]:
	Term: "
	WADDR[25]:
	Term: "
	WADDR[26]:
	Term: "
	WADDR[27]:
	Term: "
	WADDR[28]:
	Term: "
	WADDR[29]:
	Term: "
	WADDR[30]:
	Term: "
	WADDR[31]:
	Term: "
WDATA[0]:
	Term: "
WDATA[1]:
	Term: "
WDATA[2]:
	Term: "
WDATA[3]:
	Term: "
WDATA[4]:
	Term: "
WDATA[5]:
	Term: "
WDATA[6]:
	Term: "
WDATA[7]:
	Term: "
WDATA[8]:
	Term: "
WDATA[9]:
	Term: "
	WDATA[10]:
	Term: "
	WDATA[11]:
	Term: "
	WDATA[12]:
	Term: "
	WDATA[13]:
	Term: "
	WDATA[14]:
	Term: "
	WDATA[15]:
	Term: "
	WDATA[16]:
	Term: "
	WDATA[17]:
	Term: "
	WDATA[18]:
	Term: "
	WDATA[19]:
	Term: "
	WDATA[20]:
	Term: "
	WDATA[21]:
	Term: "
	WDATA[22]:
	Term: "
	WDATA[23]:
	Term: "
	WDATA[24]:
	Term: "
	WDATA[25]:
	Term: "
	WDATA[26]:
	Term: "
	WDATA[27]:
	Term: "
	WDATA[28]:
	Term: "
	WDATA[29]:
	Term: "
	WDATA[30]:
	Term: "
	WDATA[31]:
	Term: "
POP[0]:
	Term: "
POP[1]:
	Term: "
POP[2]:
	Term: "

WE:

2default:default8Z30-58h px? 
?U
?IO placement is infeasible. Number of unplaced IO Ports (%s) is greater than number of available sites (%s).
The following are banks with available pins: %s
58*place2
1962default:default2
1252default:default2?S
?8
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 125 sites available on device, but needs 132 sites.
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PADDR[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>PC_OUT[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WADDR[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[3]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[4]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[5]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[6]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[7]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[8]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[9]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[10]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[11]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[12]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[13]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[14]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[15]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[16]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[17]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[18]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[19]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[20]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[21]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[22]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[23]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[24]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[25]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[26]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[27]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[28]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[29]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[30]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WDATA[31]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>POP[0]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>POP[1]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>POP[2]<MSGMETA::END>
	Term: <MSGMETA::BEGIN::BLOCK>WE<MSGMETA::END>

"?
PADDR[0]2?
 IO Group: 0 with : SioStd: LVCMOS18   VCCO = 1.8 Termination: 0  TermDir:  Out  RangeId: 1 Drv: 12  has only 125 sites available on device, but needs 132 sites.
	Term: :
	Term: "
PADDR[1]:
	Term: "
PADDR[2]:
	Term: "
PADDR[3]:
	Term: "
PADDR[4]:
	Term: "
PADDR[5]:
	Term: "
PADDR[6]:
	Term: "
PADDR[7]:
	Term: "
PADDR[8]:
	Term: "
PADDR[9]:
	Term: "
	PADDR[10]:
	Term: "
	PADDR[11]:
	Term: "
	PADDR[12]:
	Term: "
	PADDR[13]:
	Term: "
	PADDR[14]:
	Term: "
	PADDR[15]:
	Term: "
	PADDR[16]:
	Term: "
	PADDR[17]:
	Term: "
	PADDR[18]:
	Term: "
	PADDR[19]:
	Term: "
	PADDR[20]:
	Term: "
	PADDR[21]:
	Term: "
	PADDR[22]:
	Term: "
	PADDR[23]:
	Term: "
	PADDR[24]:
	Term: "
	PADDR[25]:
	Term: "
	PADDR[26]:
	Term: "
	PADDR[27]:
	Term: "
	PADDR[28]:
	Term: "
	PADDR[29]:
	Term: "
	PADDR[30]:
	Term: "
	PADDR[31]:
	Term: "
	PC_OUT[0]:
	Term: "
	PC_OUT[1]:
	Term: "
	PC_OUT[2]:
	Term: "
	PC_OUT[3]:
	Term: "
	PC_OUT[4]:
	Term: "
	PC_OUT[5]:
	Term: "
	PC_OUT[6]:
	Term: "
	PC_OUT[7]:
	Term: "
	PC_OUT[8]:
	Term: "
	PC_OUT[9]:
	Term: "

PC_OUT[10]:
	Term: "

PC_OUT[11]:
	Term: "

PC_OUT[12]:
	Term: "

PC_OUT[13]:
	Term: "

PC_OUT[14]:
	Term: "

PC_OUT[15]:
	Term: "

PC_OUT[16]:
	Term: "

PC_OUT[17]:
	Term: "

PC_OUT[18]:
	Term: "

PC_OUT[19]:
	Term: "

PC_OUT[20]:
	Term: "

PC_OUT[21]:
	Term: "

PC_OUT[22]:
	Term: "

PC_OUT[23]:
	Term: "

PC_OUT[24]:
	Term: "

PC_OUT[25]:
	Term: "

PC_OUT[26]:
	Term: "

PC_OUT[27]:
	Term: "

PC_OUT[28]:
	Term: "

PC_OUT[29]:
	Term: "

PC_OUT[30]:
	Term: "

PC_OUT[31]:
	Term: "
WADDR[0]:
	Term: "
WADDR[1]:
	Term: "
WADDR[2]:
	Term: "
WADDR[3]:
	Term: "
WADDR[4]:
	Term: "
WADDR[5]:
	Term: "
WADDR[6]:
	Term: "
WADDR[7]:
	Term: "
WADDR[8]:
	Term: "
WADDR[9]:
	Term: "
	WADDR[10]:
	Term: "
	WADDR[11]:
	Term: "
	WADDR[12]:
	Term: "
	WADDR[13]:
	Term: "
	WADDR[14]:
	Term: "
	WADDR[15]:
	Term: "
	WADDR[16]:
	Term: "
	WADDR[17]:
	Term: "
	WADDR[18]:
	Term: "
	WADDR[19]:
	Term: "
	WADDR[20]:
	Term: "
	WADDR[21]:
	Term: "
	WADDR[22]:
	Term: "
	WADDR[23]:
	Term: "
	WADDR[24]:
	Term: "
	WADDR[25]:
	Term: "
	WADDR[26]:
	Term: "
	WADDR[27]:
	Term: "
	WADDR[28]:
	Term: "
	WADDR[29]:
	Term: "
	WADDR[30]:
	Term: "
	WADDR[31]:
	Term: "
WDATA[0]:
	Term: "
WDATA[1]:
	Term: "
WDATA[2]:
	Term: "
WDATA[3]:
	Term: "
WDATA[4]:
	Term: "
WDATA[5]:
	Term: "
WDATA[6]:
	Term: "
WDATA[7]:
	Term: "
WDATA[8]:
	Term: "
WDATA[9]:
	Term: "
	WDATA[10]:
	Term: "
	WDATA[11]:
	Term: "
	WDATA[12]:
	Term: "
	WDATA[13]:
	Term: "
	WDATA[14]:
	Term: "
	WDATA[15]:
	Term: "
	WDATA[16]:
	Term: "
	WDATA[17]:
	Term: "
	WDATA[18]:
	Term: "
	WDATA[19]:
	Term: "
	WDATA[20]:
	Term: "
	WDATA[21]:
	Term: "
	WDATA[22]:
	Term: "
	WDATA[23]:
	Term: "
	WDATA[24]:
	Term: "
	WDATA[25]:
	Term: "
	WDATA[26]:
	Term: "
	WDATA[27]:
	Term: "
	WDATA[28]:
	Term: "
	WDATA[29]:
	Term: "
	WDATA[30]:
	Term: "
	WDATA[31]:
	Term: "
POP[0]:
	Term: "
POP[1]:
	Term: "
POP[2]:
	Term: "

WE:

2default:default8Z30-58h px? 
?
'IO placer failed to find a solution
%s
374*place2?
?Below is the partial placement that can be analyzed to see if any constraint modifications will make the IO placement problem easier to solve.

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                                     IO Placement : Bank Stats                                                                           |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
| Id | Pins  | Terms |                               Standards                                |                IDelayCtrls               |  VREF  |  VCCO  |   VR   | DCI |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|  0 |     0 |     0 |                                                                        |                                          |        |        |        |     |
| 13 |    25 |     0 |                                                                        |                                          |        |        |        |     |
| 34 |    50 |     0 |                                                                        |                                          |        |        |        |     |
| 35 |    50 |     0 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+
|    |   125 |     0 |                                                                        |                                          |        |        |        |     |
+----+-------+-------+------------------------------------------------------------------------+------------------------------------------+--------+--------+--------+-----+

IO Placement:
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
| BankId |             Terminal | Standard        | Site                 | Pin                  | Attributes           |
+--------+----------------------+-----------------+----------------------+----------------------+----------------------+
2default:defaultZ30-374h px? 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 804f17ab
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.683 . Memory (MB): peak = 1858.746 ; gain = 0.0002default:defaulth px? 
H
3Phase 1 Placer Initialization | Checksum: 804f17ab
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.685 . Memory (MB): peak = 1858.746 ; gain = 0.0002default:defaulth px? 
?
?Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px? 
=
(Ending Placer Task | Checksum: 804f17ab
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.688 . Memory (MB): peak = 1858.746 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
32default:default2
22default:default2
52default:defaultZ4-41h px? 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px? 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Jul 28 02:44:21 20222default:defaultZ17-206h px? 


End Record