‘
zC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Clientes\Clientes.Api\Controllers\DefaultController.cs
	namespace 	
Clientes
 
. 
Api 
. 
Controllers "
{ 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
DefaultController "
:# $
ControllerBase% 3
{ 
[		 	
HttpGet			 
]		 
public

 
string

 
Index

 
(

 
)

 
{ 	
return 
$str ,
;, -
} 	
} 
} ‹*
{C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Clientes\Clientes.Api\Controllers\PacienteController.cs
	namespace 	
Clientes
 
. 
Api 
. 
Controllers "
{ 
[ 
	Authorize 
( !
AuthenticationSchemes $
=% &
JwtBearerDefaults' 8
.8 9 
AuthenticationScheme9 M
)M N
]N O
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
PacienteController #
:$ %
ControllerBase& 4
{ 
private 
readonly !
IPacienteQueryService .!
_pacienteQueryService/ D
;D E
private 
readonly 
ILogger  
<  !
PacienteController! 3
>3 4
_logger5 <
;< =
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
PacienteController !
(! "
ILogger 
< 
PacienteController &
>& '
logger( .
,. /
	IMediator 
mediator 
, !
IPacienteQueryService ! 
pacienteQueryService" 6
)6 7
{ 	
_logger   
=   
logger   
;   
	_mediator!! 
=!! 
mediator!!  
;!!  !!
_pacienteQueryService"" !
=""" # 
pacienteQueryService""$ 8
;""8 9
}## 	
[%% 	
HttpGet%%	 
]%% 
public&& 
async&& 
Task&& 
<&& 
DataCollection&& (
<&&( )
PacienteDto&&) 4
>&&4 5
>&&5 6
GetAll&&7 =
(&&= >
int&&> A
page&&B F
=&&G H
$num&&I J
,&&J K
int&&L O
take&&P T
=&&U V
$num&&W Y
,&&Y Z
string&&[ a
ids&&b e
=&&f g
null&&h l
)&&l m
{'' 	
IEnumerable(( 
<(( 
int(( 
>(( 
pacientesIds(( )
=((* +
null((, 0
;((0 1
if** 
(** 
!** 
string** 
.** 
IsNullOrEmpty** %
(**% &
ids**& )
)**) *
)*** +
{++ 
pacientesIds,, 
=,, 
ids,, "
.,," #
Split,,# (
(,,( )
$char,,) ,
),,, -
.,,- .
Select,,. 4
(,,4 5
x,,5 6
=>,,7 9
Convert,,: A
.,,A B
ToInt32,,B I
(,,I J
x,,J K
),,K L
),,L M
;,,M N
}-- 
return// 
await// !
_pacienteQueryService// .
.//. /
GetAllAsync/// :
(//: ;
page//; ?
,//? @
take//A E
,//E F
pacientesIds//G S
)//S T
;//T U
}00 	
[22 	
HttpGet22	 
(22 
$str22 
)22 
]22 
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
Get33) ,
(33, -
int33- 0
id331 3
)333 4
{44 	
var55 
paciente55 
=55 
await55  !
_pacienteQueryService55! 6
.556 7
GetAsync557 ?
(55? @
id55@ B
)55B C
;55C D
if66 
(66 
paciente66 
is66 
null66  
)66  !
return77 
NotFound77 
(77  
$"77  "5
)No se ha encontrado a un paciente con Id 77" K
{77K L
id77L N
}77N O
"77O P
)77P Q
;77Q R
return88 
Ok88 
(88 
paciente88 
)88 
;88  
}99 	
[;; 	
HttpPost;;	 
];; 
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Create<<) /
(<</ 0!
PacienteCreateCommand<<0 E
notification<<F R
)<<R S
{== 	
await>> 
	_mediator>> 
.>> 
Publish>> #
(>># $
notification>>$ 0
)>>0 1
;>>1 2
return?? 
Created?? 
(?? 
$str?? 
,?? 
$str?? G
)??G H
;??H I
}@@ 	
[BB 	
	HttpPatchBB	 
]BB 
publicCC 
asyncCC 
TaskCC 
<CC 
IActionResultCC '
>CC' (
UpdateContactInfoCC) :
(CC: ;,
 PacienteUpdateContactInfoCommandCC; [
notificationCC\ h
)CCh i
{DD 	
awaitEE 
	_mediatorEE 
.EE 
PublishEE #
(EE# $
notificationEE$ 0
)EE0 1
;EE1 2
returnFF 
OkFF 
(FF 
$strFF M
)FFM N
;FFN O
}GG 	
}HH 
}II Ú

dC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Clientes\Clientes.Api\Program.cs
	namespace

 	
Clientes


 
.

 
Api

 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
CreateHostBuilder 
( 
args "
)" #
.# $
Build$ )
() *
)* +
.+ ,
Run, /
(/ 0
)0 1
;1 2
} 	
public 
static 
IHostBuilder "
CreateHostBuilder# 4
(4 5
string5 ;
[; <
]< =
args> B
)B C
=>D F
Host 
.  
CreateDefaultBuilder %
(% &
args& *
)* +
. $
ConfigureWebHostDefaults )
() *

webBuilder* 4
=>5 7
{ 

webBuilder 
. 

UseStartup )
<) *
Startup* 1
>1 2
(2 3
)3 4
;4 5
} 
) 
; 
} 
} ×0
dC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Clientes\Clientes.Api\Startup.cs
	namespace 	
Clientes
 
. 
Api 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{   	
services!! 
.!! "
AddHttpContextAccessor!! +
(!!+ ,
)!!, -
;!!- .
services## 
.## 
AddDbContext## !
<##! " 
ApplicationDbContext##" 6
>##6 7
(##7 8
options$$ 
=>$$ 
options$$ "
.$$" #
UseSqlServer$$# /
($$/ 0
Configuration%% !
.%%! "
GetConnectionString%%" 5
(%%5 6
$str%%6 I
)%%I J
,%%J K
x&& 
=>&& 
x&& 
.&& "
MigrationsHistoryTable&& 1
(&&1 2
$str&&2 I
,&&I J
$str&&K U
)&&U V
)'' 
)(( 
;(( 
services** 
.** 
AddHealthChecks** $
(**$ %
)**% &
.++ 
AddCheck++ 
(++ 
$str++  
,++  !
(++" #
)++# $
=>++% '
HealthCheckResult++( 9
.++9 :
Healthy++: A
(++A B
)++B C
)++C D
.,, 
AddDbContextCheck,, "
<,," # 
ApplicationDbContext,,# 7
>,,7 8
(,,8 9
typeof,,9 ?
(,,? @ 
ApplicationDbContext,,@ T
),,T U
.,,U V
Name,,V Z
),,Z [
;,,[ \
services.. 
... 

AddMediatR.. 
(..  
Assembly..  (
...( )
Load..) -
(..- .
$str... N
)..N O
)..O P
;..P Q
services00 
.00 
AddTransient00 !
<00! "!
IPacienteQueryService00" 7
,007 8 
PacienteQueryService009 M
>00M N
(00N O
)00O P
;00P Q
services22 
.22 
AddControllers22 #
(22# $
)22$ %
;22% &
var44 
	secretKey44 
=44 
Encoding44 $
.44$ %
ASCII44% *
.44* +
GetBytes44+ 3
(443 4
Configuration55 
.55 
GetValue55 &
<55& '
string55' -
>55- .
(55. /
$str55/ :
)55: ;
)66 
;66 
services88 
.88 
AddAuthentication88 &
(88& '
JwtBearerDefaults88' 8
.888 9 
AuthenticationScheme889 M
)88M N
.88N O
AddJwtBearer88O [
(88[ \
x88\ ]
=>88^ `
{99 
x:: 
.::  
RequireHttpsMetadata:: &
=::' (
false::) .
;::. /
x;; 
.;; 
	SaveToken;; 
=;; 
true;; "
;;;" #
x<< 
.<< %
TokenValidationParameters<< +
=<<, -
new<<. 1%
TokenValidationParameters<<2 K
{== $
ValidateIssuerSigningKey>> ,
=>>- .
true>>/ 3
,>>3 4
IssuerSigningKey?? $
=??% &
new??' * 
SymmetricSecurityKey??+ ?
(??? @
	secretKey??@ I
)??I J
,??J K
ValidateIssuer@@ "
=@@# $
false@@% *
,@@* +
ValidateAudienceAA $
=AA% &
falseAA' ,
}BB 
;BB 
}CC 
)CC 
;CC 
}DD 	
publicGG 
voidGG 
	ConfigureGG 
(GG 
IApplicationBuilderGG 1
appGG2 5
,GG5 6
IWebHostEnvironmentGG7 J
envGGK N
,GGN O
ILoggerFactoryGGP ^
loggerFactoryGG_ l
)GGl m
{HH 	
ifII 
(II 
envII 
.II 
IsDevelopmentII !
(II! "
)II" #
)II# $
{JJ 
appKK 
.KK %
UseDeveloperExceptionPageKK -
(KK- .
)KK. /
;KK/ 0
}LL 
elseMM 
{NN 
loggerFactoryOO 
.OO 
	AddSyslogOO '
(OO' (
ConfigurationPP !
.PP! "
GetValuePP" *
<PP* +
stringPP+ 1
>PP1 2
(PP2 3
$strPP3 D
)PPD E
,PPE F
ConfigurationQQ !
.QQ! "
GetValueQQ" *
<QQ* +
intQQ+ .
>QQ. /
(QQ/ 0
$strQQ0 A
)QQA B
)QQB C
;QQC D
}RR 
appTT 
.TT 

UseRoutingTT 
(TT 
)TT 
;TT 
appVV 
.VV 
UseAuthorizationVV  
(VV  !
)VV! "
;VV" #
appWW 
.WW 
UseAuthenticationWW !
(WW! "
)WW" #
;WW# $
appYY 
.YY 
UseEndpointsYY 
(YY 
	endpointsYY &
=>YY' )
{ZZ 
	endpoints[[ 
.[[ 
MapControllers[[ (
([[( )
)[[) *
;[[* +
	endpoints\\ 
.\\ 
MapHealthChecks\\ )
(\\) *
$str\\* 8
,\\8 9
new\\: =
HealthCheckOptions\\> P
(\\P Q
)\\Q R
{]] 
	Predicate^^ 
=^^ 
_^^  !
=>^^" $
true^^% )
}__ 
)__ 
;__ 
}`` 
)`` 
;`` 
}aa 	
}bb 
}cc 