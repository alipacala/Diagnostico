ê
zC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Api\Controllers\DefaultController.cs
	namespace 	
Catalog
 
. 
Api 
. 
Controllers !
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
$str 0
;0 1
} 	
} 
} Ñ
{C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Api\Controllers\IdentityController.cs
	namespace		 	
Identity		
 
.		 
Api		 
.		 
Controllers		 "
{

 
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
IdentityController #
:$ %
ControllerBase& 4
{ 
private 
readonly 
ILogger  
<  !
IdentityController! 3
>3 4
_logger5 <
;< =
private 
readonly 
SignInManager &
<& '
Usuario' .
>. /
_signInManager0 >
;> ?
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
IdentityController !
(! "
ILogger 
< 
IdentityController &
>& '
logger( .
,. /
SignInManager 
< 
Usuario !
>! "
signInManager# 0
,0 1
	IMediator 
mediator 
) 
{ 	
_logger 
= 
logger 
; 
_signInManager 
= 
signInManager *
;* +
	_mediator 
= 
mediator  
;  !
} 	
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Create) /
(/ 0 
UsuarioCreateCommand0 D
commandE L
)L M
{ 	
if   
(   

ModelState   
.   
IsValid   "
)  " #
{!! 
var"" 
result"" 
="" 
await"" "
	_mediator""# ,
."", -
Send""- 1
(""1 2
command""2 9
)""9 :
;"": ;
if$$ 
($$ 
!$$ 
result$$ 
.$$ 
	Succeeded$$ %
)$$% &
{%% 
return&& 

BadRequest&& %
(&&% &
result&&& ,
.&&, -
Errors&&- 3
)&&3 4
;&&4 5
}'' 
return)) 
Ok)) 
()) 
))) 
;)) 
}** 
return,, 

BadRequest,, 
(,, 
),, 
;,,  
}-- 	
[// 	
HttpPost//	 
(// 
$str// "
)//" #
]//# $
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (
Authentication00) 7
(007 8
UsuarioLoginCommand008 K
command00L S
)00S T
{11 	
if22 
(22 

ModelState22 
.22 
IsValid22 "
)22" #
{33 
var44 
result44 
=44 
await44 "
	_mediator44# ,
.44, -
Send44- 1
(441 2
command442 9
)449 :
;44: ;
if66 
(66 
!66 
result66 
.66 
	Succeeded66 %
)66% &
{77 
return88 

BadRequest88 %
(88% &
$str88& 5
)885 6
;886 7
}99 
return;; 
Ok;; 
(;; 
result;;  
);;  !
;;;! "
}<< 
return>> 

BadRequest>> 
(>> 
)>> 
;>>  
}?? 	
}@@ 
}AA Ã
zC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Api\Controllers\UsuarioController.cs
	namespace 	
Identity
 
. 
Api 
. 
Controllers "
{ 
[ 
	Authorize 
( !
AuthenticationSchemes $
=% &
JwtBearerDefaults' 8
.8 9 
AuthenticationScheme9 M
)M N
]N O
[ 
ApiController 
] 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
UsuarioController "
:# $
ControllerBase% 3
{ 
private 
readonly  
IUsuarioQueryService - 
_usuarioQueryService. B
;B C
private 
readonly 
ILogger  
<  !
UsuarioController! 2
>2 3
_logger4 ;
;; <
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public 
UsuarioController  
(  !
ILogger 
< 
UsuarioController %
>% &
logger' -
,- .
	IMediator 
mediator 
,  
IUsuarioQueryService  
usuarioQueryService! 4
)4 5
{ 	
_logger 
= 
logger 
; 
	_mediator 
= 
mediator  
;  ! 
_usuarioQueryService  
=! "
usuarioQueryService# 6
;6 7
} 	
[!! 	
HttpGet!!	 
]!! 
public"" 
async"" 
Task"" 
<"" 
DataCollection"" (
<""( )

UsuarioDto"") 3
>""3 4
>""4 5
GetAll""6 <
(""< =
int""= @
page""A E
=""F G
$num""H I
,""I J
int""K N
take""O S
=""T U
$num""V X
,""X Y
string""Z `
ids""a d
=""e f
null""g k
)""k l
{## 	
IEnumerable$$ 
<$$ 
string$$ 
>$$ 
users$$  %
=$$& '
ids$$( +
?$$+ ,
.$$, -
Split$$- 2
($$2 3
$char$$3 6
)$$6 7
;$$7 8
return%% 
await%%  
_usuarioQueryService%% -
.%%- .
GetAllAsync%%. 9
(%%9 :
page%%: >
,%%> ?
take%%@ D
,%%D E
users%%F K
)%%K L
;%%L M
}&& 	
[(( 	
HttpGet((	 
((( 
$str(( 
)(( 
](( 
public)) 
async)) 
Task)) 
<)) 

UsuarioDto)) $
>))$ %
Get))& )
())) *
string))* 0
id))1 3
)))3 4
{** 	
return++ 
await++  
_usuarioQueryService++ -
.++- .
GetAsync++. 6
(++6 7
id++7 9
)++9 :
;++: ;
},, 	
}-- 
}.. ⁄

dC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Api\Program.cs
	namespace

 	
Identity
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
} ˚;
dC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Api\Startup.cs
	namespace 	
Identity
 
. 
Api 
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public!! 
void!! 
ConfigureServices!! %
(!!% &
IServiceCollection!!& 8
services!!9 A
)!!A B
{"" 	
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
... 
AddIdentity..  
<..  !
Usuario..! (
,..( )
Rol..* -
>..- .
(... /
)../ 0
.// $
AddEntityFrameworkStores// )
<//) * 
ApplicationDbContext//* >
>//> ?
(//? @
)//@ A
.00 $
AddDefaultTokenProviders00 )
(00) *
)00* +
;00+ ,
services22 
.22 
	Configure22 
<22 
IdentityOptions22 .
>22. /
(22/ 0
options220 7
=>228 :
{33 
options44 
.44 
Password44  
.44  !
RequireDigit44! -
=44. /
false440 5
;445 6
options55 
.55 
Password55  
.55  !
RequireLowercase55! 1
=552 3
false554 9
;559 :
options66 
.66 
Password66  
.66  !"
RequireNonAlphanumeric66! 7
=668 9
false66: ?
;66? @
options77 
.77 
Password77  
.77  !
RequireUppercase77! 1
=772 3
false774 9
;779 :
options88 
.88 
Password88  
.88  !
RequiredLength88! /
=880 1
$num882 3
;883 4
options99 
.99 
Password99  
.99  !
RequiredUniqueChars99! 4
=995 6
$num997 8
;998 9
}:: 
):: 
;:: 
services<< 
.<< 

AddMediatR<< 
(<<  
Assembly<<  (
.<<( )
Load<<) -
(<<- .
$str<<. N
)<<N O
)<<O P
;<<P Q
services>> 
.>> 
AddTransient>> !
<>>! " 
IUsuarioQueryService>>" 6
,>>6 7
UsuarioQueryService>>8 K
>>>K L
(>>L M
)>>M N
;>>N O
services@@ 
.@@ 
AddControllers@@ #
(@@# $
)@@$ %
;@@% &
varBB 
	secretKeyBB 
=BB 
EncodingBB $
.BB$ %
ASCIIBB% *
.BB* +
GetBytesBB+ 3
(BB3 4
ConfigurationCC 
.CC 
GetValueCC &
<CC& '
stringCC' -
>CC- .
(CC. /
$strCC/ :
)CC: ;
)DD 
;DD 
servicesFF 
.FF 
AddAuthenticationFF &
(FF& '
JwtBearerDefaultsFF' 8
.FF8 9 
AuthenticationSchemeFF9 M
)FFM N
.FFN O
AddJwtBearerFFO [
(FF[ \
xFF\ ]
=>FF^ `
{GG 
xHH 
.HH  
RequireHttpsMetadataHH &
=HH' (
falseHH) .
;HH. /
xII 
.II 
	SaveTokenII 
=II 
trueII "
;II" #
xJJ 
.JJ %
TokenValidationParametersJJ +
=JJ, -
newJJ. 1%
TokenValidationParametersJJ2 K
{KK $
ValidateIssuerSigningKeyLL ,
=LL- .
trueLL/ 3
,LL3 4
IssuerSigningKeyMM $
=MM% &
newMM' * 
SymmetricSecurityKeyMM+ ?
(MM? @
	secretKeyMM@ I
)MMI J
,MMJ K
ValidateIssuerNN "
=NN# $
falseNN% *
,NN* +
ValidateAudienceOO $
=OO% &
falseOO' ,
}PP 
;PP 
}QQ 
)QQ 
;QQ 
}RR 	
publicUU 
voidUU 
	ConfigureUU 
(UU 
IApplicationBuilderUU 1
appUU2 5
,UU5 6
IWebHostEnvironmentUU7 J
envUUK N
,UUN O
ILoggerFactoryUUP ^
loggerFactoryUU_ l
)UUl m
{VV 	
ifWW 
(WW 
envWW 
.WW 
IsDevelopmentWW !
(WW! "
)WW" #
)WW# $
{XX 
appYY 
.YY %
UseDeveloperExceptionPageYY -
(YY- .
)YY. /
;YY/ 0
}ZZ 
else[[ 
{\\ 
loggerFactory]] 
.]] 
	AddSyslog]] '
(]]' (
Configuration^^ !
.^^! "
GetValue^^" *
<^^* +
string^^+ 1
>^^1 2
(^^2 3
$str^^3 D
)^^D E
,^^E F
Configuration__ !
.__! "
GetValue__" *
<__* +
int__+ .
>__. /
(__/ 0
$str__0 A
)__A B
)__B C
;__C D
}`` 
appbb 
.bb 

UseRoutingbb 
(bb 
)bb 
;bb 
appdd 
.dd 
UseAuthorizationdd  
(dd  !
)dd! "
;dd" #
appee 
.ee 
UseAuthenticationee !
(ee! "
)ee" #
;ee# $
appgg 
.gg 
UseEndpointsgg 
(gg 
	endpointsgg &
=>gg' )
{hh 
	endpointsii 
.ii 
MapControllersii (
(ii( )
)ii) *
;ii* +
	endpointsjj 
.jj 
MapHealthChecksjj )
(jj) *
$strjj* 8
,jj8 9
newjj: =
HealthCheckOptionsjj> P
(jjP Q
)jjQ R
{kk 
	Predicatell 
=ll 
_ll  !
=>ll" $
truell% )
}mm 
)mm 
;mm 
}nn 
)nn 
;nn 
}oo 	
}pp 
}qq 