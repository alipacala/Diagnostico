‘
zC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Personal\Personal.Api\Controllers\DefaultController.cs
	namespace 	
Personal
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
} ë%
{C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Personal\Personal.Api\Controllers\EmpleadoController.cs
	namespace 	
Personal
 
. 
Api 
. 
Controllers "
{ 
[ 
	Authorize 
( !
AuthenticationSchemes $
=% &
JwtBearerDefaults' 8
.8 9 
AuthenticationScheme9 M
)M N
]N O
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
EmpleadoController #
:$ %
ControllerBase& 4
{ 
private 
readonly !
IEmpleadoQueryService .!
_empleadoQueryService/ D
;D E
private 
readonly 
ILogger  
<  !
EmpleadoController! 3
>3 4
_logger5 <
;< =
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
EmpleadoController !
(! "
ILogger 
< 
EmpleadoController &
>& '
logger( .
,. /
	IMediator 
mediator 
, !
IEmpleadoQueryService ! 
empleadoQueryService" 6
)6 7
{ 	
_logger 
= 
logger 
; 
	_mediator   
=   
mediator    
;    !!
_empleadoQueryService!! !
=!!" # 
empleadoQueryService!!$ 8
;!!8 9
}"" 	
[$$ 	
HttpGet$$	 
]$$ 
public%% 
async%% 
Task%% 
<%% 
DataCollection%% (
<%%( )
EmpleadoDto%%) 4
>%%4 5
>%%5 6
GetAll%%7 =
(%%= >
int%%> A
page%%B F
=%%G H
$num%%I J
,%%J K
int%%L O
take%%P T
=%%U V
$num%%W Y
,%%Y Z
string%%[ a
ids%%b e
=%%f g
null%%h l
)%%l m
{&& 	
IEnumerable'' 
<'' 
int'' 
>'' 
empleadosIds'' )
=''* +
null'', 0
;''0 1
if)) 
()) 
!)) 
string)) 
.)) 
IsNullOrEmpty)) %
())% &
ids))& )
)))) *
)))* +
{** 
empleadosIds++ 
=++ 
ids++ "
.++" #
Split++# (
(++( )
$char++) ,
)++, -
.++- .
Select++. 4
(++4 5
x++5 6
=>++7 9
Convert++: A
.++A B
ToInt32++B I
(++I J
x++J K
)++K L
)++L M
;++M N
},, 
return.. 
await.. !
_empleadoQueryService.. .
.... /
GetAllAsync../ :
(..: ;
page..; ?
,..? @
take..A E
,..E F
empleadosIds..G S
)..S T
;..T U
}// 	
[11 	
HttpGet11	 
(11 
$str11 
)11 
]11 
public22 
async22 
Task22 
<22 
EmpleadoDto22 %
>22% &
Get22' *
(22* +
int22+ .
id22/ 1
)221 2
{33 	
return44 
await44 !
_empleadoQueryService44 .
.44. /
GetAsync44/ 7
(447 8
id448 :
)44: ;
;44; <
}55 	
[77 	
HttpPost77	 
]77 
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (
Create88) /
(88/ 0!
EmpleadoCreateCommand880 E
notification88F R
)88R S
{99 	
await:: 
	_mediator:: 
.:: 
Publish:: #
(::# $
notification::$ 0
)::0 1
;::1 2
return;; 
Ok;; 
(;; 
);; 
;;; 
}<< 	
[>> 	
	HttpPatch>>	 
]>> 
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
UpdateActivo??) 5
(??5 6'
EmpleadoUpdateActivoCommand??6 Q
notification??R ^
)??^ _
{@@ 	
awaitAA 
	_mediatorAA 
.AA 
PublishAA #
(AA# $
notificationAA$ 0
)AA0 1
;AA1 2
returnBB 
OkBB 
(BB 
)BB 
;BB 
}CC 	
}DD 
}EE Ú

dC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Personal\Personal.Api\Program.cs
	namespace

 	
Personal
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
} Ä/
dC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Personal\Personal.Api\Startup.cs
	namespace 	
Personal
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
(,,8 9
),,9 :
;,,: ;
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
IEmpleadoQueryService00" 7
,007 8 
EmpleadoQueryService009 M
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