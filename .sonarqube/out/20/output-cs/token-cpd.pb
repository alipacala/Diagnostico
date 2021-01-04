½
˜C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Service.EventHandlers\Commands\DiagnosticoCreateCommand.cs
	namespace 	
Diagnosticos
 
. 
Service 
. 
EventHandlers ,
., -
Commands- 5
{ 
public 

class $
DiagnosticoCreateCommand )
:* +
INotification, 9
{ 
public 
int 
Empleado_Id 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
int		 
Paciente_Id		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
ICollection

 
<

 $
DetalleDiagnosticoCreate

 3
>

3 4
DetallesDiagnostico

5 H
{

I J
get

K N
;

N O
set

P S
;

S T
}

U V
=

W X
new

Y \
List

] a
<

a b$
DetalleDiagnosticoCreate

b z
>

z {
(

{ |
)

| }
;

} ~
} 
public 

class $
DetalleDiagnosticoCreate )
{ 
public 
string 
Sintoma 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} „]
”C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Service.EventHandlers\DiagnosticoCreateEventHandler.cs
	namespace 	
Diagnosticos
 
. 
Service 
. 
EventHandlers ,
{ 
public 

class )
DiagnosticoCreateEventHandler .
:/ 0 
INotificationHandler 
< $
DiagnosticoCreateCommand 5
>5 6
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
private 
readonly 
ILogger  
<  !)
DiagnosticoCreateEventHandler! >
>> ?
_logger@ G
;G H
public )
DiagnosticoCreateEventHandler ,
(, - 
ApplicationDbContext  
context! (
,( )
ILogger 
< )
DiagnosticoCreateEventHandler 1
>1 2
logger3 9
)9 :
{ 	
_context 
= 
context 
; 
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
Handle  
(  !$
DiagnosticoCreateCommand! 9
notification: F
,F G
CancellationTokenH Y
cancellationTokenZ k
)k l
{   	
_logger!! 
.!! 
LogInformation!! "
(!!" #
$str!!# Q
)!!Q R
;!!R S
var"" 
entry"" 
="" 
new"" 
Diagnostico"" '
(""' (
)""( )
;"") *
using$$ 
($$ 
var$$ 
transaction$$ "
=$$# $
await$$% *
_context$$+ 3
.$$3 4
Database$$4 <
.$$< =!
BeginTransactionAsync$$= R
($$R S
)$$S T
)$$T U
{%% 
_logger&& 
.&& 
LogInformation&& &
(&&& '
$str&&' B
)&&B C
;&&C D
PrepareDetails'' 
('' 
entry'' $
,''$ %
notification''& 2
)''2 3
;''3 4
_logger)) 
.)) 
LogInformation)) &
())& '
$str))' A
)))A B
;))B C
PrepareHeader** 
(** 
entry** #
,**# $
notification**% 1
)**1 2
;**2 3
_logger,, 
.,, 
LogInformation,, &
(,,& '
$str,,' C
),,C D
;,,D E
await-- 
_context-- 
.-- 
AddAsync-- '
(--' (
entry--( -
)--- .
;--. /
await.. 
_context.. 
... 
SaveChangesAsync.. /
(../ 0
)..0 1
;..1 2
_logger00 
.00 
LogInformation00 &
(00& '
$"00' ),
 ! El diagnÃ³stico ha sido creado00) H
"00H I
)00I J
;00J K
await22 
transaction22 !
.22! "
CommitAsync22" -
(22- .
)22. /
;22/ 0
}33 
_logger55 
.55 
LogInformation55 "
(55" #
$str55# R
)55R S
;55S T
}66 	
private88 
void88 
PrepareDetails88 #
(88# $
Diagnostico88$ /
entry880 5
,885 6$
DiagnosticoCreateCommand887 O
notification88P \
)88\ ]
{99 	
entry:: 
.:: 
DetallesDiagnostico:: %
=::& '
notification::( 4
.::4 5
DetallesDiagnostico::5 H
.::H I
Select::I O
(::O P
x::P Q
=>::R T
new::U X
DetalleDiagnostico::Y k
{;; 
Diagnostico_Id<< 
=<<  
entry<<! &
.<<& '
Id<<' )
,<<) *
Sintoma== 
=== 
x== 
.== 
Sintoma== #
}>> 
)>> 
.>> 
ToList>> 
(>> 
)>> 
;>> 
}?? 	
privateAA 
voidAA 
PrepareHeaderAA "
(AA" #
DiagnosticoAA# .
entryAA/ 4
,AA4 5$
DiagnosticoCreateCommandAA6 N
notificationAAO [
)AA[ \
{BB 	
entryDD 
.DD 

EnfermedadDD 
=DD  
DeterminarEnfermedadDD 3
(DD3 4
notificationDD4 @
)DD@ A
;DDA B
entryEE 
.EE 
FechaEE 
=EE 
DateTimeEE "
.EE" #
UtcNowEE# )
;EE) *
entryFF 
.FF 
Paciente_IdFF 
=FF 
notificationFF  ,
.FF, -
Paciente_IdFF- 8
;FF8 9
entryGG 
.GG 
Empleado_IdGG 
=GG 
notificationGG  ,
.GG, -
Empleado_IdGG- 8
;GG8 9
}HH 	
publicJJ 
stringJJ  
DeterminarEnfermedadJJ *
(JJ* +$
DiagnosticoCreateCommandJJ+ C
notificationJJD P
)JJP Q
{KK 	
varLL 
prologLL 
=LL 
newLL 
PrologEngineLL )
(LL) *$
persistentCommandHistoryLL* B
:LLB C
falseLLD I
)LLI J
;LLJ K
;MM 
varNN 
absPathNN 
=NN 
PathNN 
.NN 
GetFullPathNN *
(NN* +
$strNN+ k
)NNk l
;NNl m
varPP 
enfermedadesPP 
=PP 
newPP "
ListPP# '
<PP' (

EnfermedadPP( 2
>PP2 3
{QQ 
newRR 

EnfermedadRR 
{RR  
NombreRR! '
=RR( )
$strRR* 1
,RR1 2
CantidadRR3 ;
=RR< =
$numRR> ?
,RR? @

PorcentajeRRA K
=RRL M
$numRRN O
,RRO P
CantSintomasRRQ ]
=RR^ _
$numRR` b
}RRc d
,RRd e
newSS 

EnfermedadSS 
{SS  
NombreSS! '
=SS( )
$strSS* 2
,SS2 3
CantidadSS4 <
=SS= >
$numSS? @
,SS@ A

PorcentajeSSB L
=SSM N
$numSSO P
,SSP Q
CantSintomasSSR ^
=SS_ `
$numSSa c
}SSd e
,SSe f
newTT 

EnfermedadTT 
{TT  
NombreTT! '
=TT( )
$strTT* 2
,TT2 3
CantidadTT4 <
=TT= >
$numTT? @
,TT@ A

PorcentajeTTB L
=TTM N
$numTTO P
,TTP Q
CantSintomasTTR ^
=TT_ `
$numTTa c
}TTd e
,TTe f
newUU 

EnfermedadUU 
{UU  
NombreUU! '
=UU( )
$strUU* 3
,UU3 4
CantidadUU5 =
=UU> ?
$numUU@ A
,UUA B

PorcentajeUUC M
=UUN O
$numUUP Q
,UUQ R
CantSintomasUUS _
=UU` a
$numUUb d
}UUe f
,UUf g
newVV 

EnfermedadVV 
{VV  
NombreVV! '
=VV( )
$strVV* 2
,VV2 3
CantidadVV4 <
=VV= >
$numVV? @
,VV@ A

PorcentajeVVB L
=VVM N
$numVVO P
,VVP Q
CantSintomasVVR ^
=VV_ `
$numVVa c
}VVd e
,VVe f
newWW 

EnfermedadWW 
{WW  
NombreWW! '
=WW( )
$strWW* 4
,WW4 5
CantidadWW6 >
=WW? @
$numWWA B
,WWB C

PorcentajeWWD N
=WWO P
$numWWQ R
,WWR S
CantSintomasWWT `
=WWa b
$numWWc e
}WWf g
,WWg h
newXX 

EnfermedadXX 
{XX  
NombreXX! '
=XX( )
$strXX* 1
,XX1 2
CantidadXX3 ;
=XX< =
$numXX> ?
,XX? @

PorcentajeXXA K
=XXL M
$numXXN O
,XXO P
CantSintomasXXQ ]
=XX^ _
$numXX` b
}XXc d
}YY 
;YY 
if[[ 
([[ 
notification[[ 
.[[ 
DetallesDiagnostico[[ 0
==[[1 3
null[[4 8
||[[9 ;
notification[[< H
.[[H I
DetallesDiagnostico[[I \
.[[\ ]
Count[[] b
<=[[c e
$num[[f g
)[[g h
throw\\ 
new\\ 9
-DiagnosticosDiagnosticoCreateCommandException\\ G
(\\G H
$"\\H J=
1No hay detalles de diagnostico en el diagnostico.\\J {
"\\{ |
)\\| }
;\\} ~
foreach^^ 
(^^ 
var^^ 
detalle^^  
in^^! #
notification^^$ 0
.^^0 1
DetallesDiagnostico^^1 D
)^^D E
{__ 
var`` 
solution`` 
=`` 
prolog`` %
.aa 
GetAllSolutionsaa $
(aa$ %
absPathaa% ,
,aa, -
$"aa. 0
enfermedadde(Z, aa0 @
{aa@ A
detalleaaA H
.aaH I
SintomaaaI P
}aaP Q
)aaQ R
"aaR S
)aaS T
.bb 
NextSolutionbb !
;bb! "
foreachdd 
(dd 
vardd 
variabledd %
indd& (
solutiondd) 1
)dd1 2
{ee 
varff 
coincidenciaff $
=ff% &
variableff' /
.ff/ 0
NextVariableff0 <
.ff< =
Firstff= B
(ffB C
)ffC D
.ffD E
ValueffE J
;ffJ K
ifhh 
(hh 
enfermedadeshh $
.hh$ %
Selecthh% +
(hh+ ,
xhh, -
=>hh. 0
xhh1 2
.hh2 3
Nombrehh3 9
)hh9 :
.hh: ;
Containshh; C
(hhC D
coincidenciahhD P
)hhP Q
)hhQ R
enfermedadesii $
.ii$ %
Singleii% +
(ii+ ,
xii, -
=>ii. 0
xii1 2
.ii2 3
Nombreii3 9
==ii: <
coincidenciaii= I
)iiI J
.iiJ K
CantidadiiK S
++iiS U
;iiU V
}jj 
}kk 
foreachmm 
(mm 
varmm 

enfermedadmm #
inmm$ &
enfermedadesmm' 3
)mm3 4

enfermedadnn 
.nn 

Porcentajenn %
=nn& '

enfermedadnn( 2
.nn2 3
Cantidadnn3 ;
*nn< =
$numnn> A
/nnB C

enfermedadnnD N
.nnN O
CantSintomasnnO [
;nn[ \
varpp 
maxPorcpp 
=pp 
enfermedadespp &
.pp& '
Maxpp' *
(pp* +
xpp+ ,
=>pp- /
xpp0 1
.pp1 2

Porcentajepp2 <
)pp< =
;pp= >
returnrr 
enfermedadesrr 
.rr  
Firstrr  %
(rr% &
xrr& '
=>rr( *
xrr+ ,
.rr, -

Porcentajerr- 7
==rr8 :
maxPorcrr; B
)rrB C
.rrC D
NombrerrD J
;rrJ K
}ss 	
classuu 

Enfermedaduu 
{vv 	
publicww 
stringww 
Nombreww  
;ww  !
publicxx 
intxx 
Cantidadxx 
;xx  
publicyy 
doubleyy 

Porcentajeyy $
;yy$ %
publiczz 
doublezz 
CantSintomaszz &
;zz& '
}{{ 	
}|| 
}}} ž
¯C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Service.EventHandlers\Exceptions\DiagnosticosDiagnosticoCreateCommandException.cs
	namespace 	
Diagnosticos
 
. 
Service 
. 
EventHandlers ,
., -

Exceptions- 7
{ 
public 

class 9
-DiagnosticosDiagnosticoCreateCommandException >
:? @
	ExceptionA J
{ 
public		 9
-DiagnosticosDiagnosticoCreateCommandException		 <
(		< =
string		= C
message		D K
)		K L
:		M N
base		O S
(		S T
message		T [
)		[ \
{

 	
} 	
} 
} 