ž
‚C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Api\Controllers\DefaultController.cs
	namespace 	
Diagnosticos
 
. 
Api 
. 
Controllers &
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
} Í
‡C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Api\Controllers\DiagnosticosController.cs
	namespace 	
Diagnosticos
 
. 
Api 
. 
Controllers &
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
$str 
) 
] 
public 

class "
DiagnosticosController '
:( )
ControllerBase* 8
{ 
private 
readonly $
IDiagnosticoQueryService 1$
_diagnosticoQueryService2 J
;J K
private 
readonly 
ILogger  
<  !"
DiagnosticosController! 7
>7 8
_logger9 @
;@ A
private 
readonly 
	IMediator "
	_mediator# ,
;, -
public "
DiagnosticosController %
(% &
ILogger 
< "
DiagnosticosController *
>* +
logger, 2
,2 3
	IMediator 
mediator 
, $
IDiagnosticoQueryService $#
diagnosticoQueryService% <
)< =
{ 	
_logger 
= 
logger 
; 
	_mediator 
= 
mediator  
;  !$
_diagnosticoQueryService $
=% &#
diagnosticoQueryService' >
;> ?
} 	
[!! 	
HttpGet!!	 
]!! 
public"" 
async"" 
Task"" 
<"" 
DataCollection"" (
<""( )
DiagnosticoDto"") 7
>""7 8
>""8 9
GetAll"": @
(""@ A
int""A D
page""E I
=""J K
$num""L M
,""M N
int""O R
take""S W
=""X Y
$num""Z \
)""\ ]
{## 	
return$$ 
await$$ $
_diagnosticoQueryService$$ 1
.$$1 2
GetAllAsync$$2 =
($$= >
page$$> B
,$$B C
take$$D H
)$$H I
;$$I J
}%% 	
['' 	
HttpGet''	 
('' 
$str'' 
)'' 
]'' 
public(( 
async(( 
Task(( 
<(( 
DiagnosticoDto(( (
>((( )
Get((* -
(((- .
int((. 1
id((2 4
)((4 5
{)) 	
return** 
await** $
_diagnosticoQueryService** 1
.**1 2
GetAsync**2 :
(**: ;
id**; =
)**= >
;**> ?
}++ 	
[-- 	
HttpPost--	 
]-- 
public.. 
async.. 
Task.. 
<.. 
IActionResult.. '
>..' (
Create..) /
(../ 0$
DiagnosticoCreateCommand..0 H
notification..I U
)..U V
{// 	
await00 
	_mediator00 
.00 
Publish00 #
(00# $
notification00$ 0
)000 1
;001 2
return11 
Ok11 
(11 
)11 
;11 
}22 	
}33 
}44 æ

lC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Api\Program.cs
	namespace

 	
Diagnosticos


 
.

 
Api

 
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
} Ö/
lC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Api\Startup.cs
	namespace 	
Diagnosticos
 
. 
Api 
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
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services   
.   "
AddHttpContextAccessor   +
(  + ,
)  , -
;  - .
services"" 
."" 
AddDbContext"" !
<""! " 
ApplicationDbContext""" 6
>""6 7
(""7 8
options## 
=>## 
options## "
.##" #
UseSqlServer### /
(##/ 0
Configuration$$ !
.$$! "
GetConnectionString$$" 5
($$5 6
$str$$6 I
)$$I J
,$$J K
x%% 
=>%% 
x%% 
.%% "
MigrationsHistoryTable%% 1
(%%1 2
$str%%2 I
,%%I J
$str%%K Y
)%%Y Z
)&& 
)'' 
;'' 
services)) 
.)) 
AddHealthChecks)) $
())$ %
)))% &
.** 
AddCheck** 
(** 
$str**  
,**  !
(**" #
)**# $
=>**% '
HealthCheckResult**( 9
.**9 :
Healthy**: A
(**A B
)**B C
)**C D
.++ 
AddDbContextCheck++ "
<++" # 
ApplicationDbContext++# 7
>++7 8
(++8 9
)++9 :
;++: ;
services-- 
.-- 

AddMediatR-- 
(--  
Assembly--  (
.--( )
Load--) -
(--- .
$str--. R
)--R S
)--S T
;--T U
services// 
.// 
AddTransient// !
<//! "$
IDiagnosticoQueryService//" :
,//: ;#
DiagnosticoQueryService//< S
>//S T
(//T U
)//U V
;//V W
services11 
.11 
AddControllers11 #
(11# $
)11$ %
;11% &
var33 
	secretKey33 
=33 
Encoding33 $
.33$ %
ASCII33% *
.33* +
GetBytes33+ 3
(333 4
Configuration44 
.44 
GetValue44 &
<44& '
string44' -
>44- .
(44. /
$str44/ :
)44: ;
)55 
;55 
services77 
.77 
AddAuthentication77 &
(77& '
JwtBearerDefaults77' 8
.778 9 
AuthenticationScheme779 M
)77M N
.77N O
AddJwtBearer77O [
(77[ \
x77\ ]
=>77^ `
{88 
x99 
.99  
RequireHttpsMetadata99 &
=99' (
false99) .
;99. /
x:: 
.:: 
	SaveToken:: 
=:: 
true:: "
;::" #
x;; 
.;; %
TokenValidationParameters;; +
=;;, -
new;;. 1%
TokenValidationParameters;;2 K
{<< $
ValidateIssuerSigningKey== ,
===- .
true==/ 3
,==3 4
IssuerSigningKey>> $
=>>% &
new>>' * 
SymmetricSecurityKey>>+ ?
(>>? @
	secretKey>>@ I
)>>I J
,>>J K
ValidateIssuer?? "
=??# $
false??% *
,??* +
ValidateAudience@@ $
=@@% &
false@@' ,
}AA 
;AA 
}BB 
)BB 
;BB 
}CC 	
publicFF 
voidFF 
	ConfigureFF 
(FF 
IApplicationBuilderFF 1
appFF2 5
,FF5 6
IWebHostEnvironmentFF7 J
envFFK N
,FFN O
ILoggerFactoryFFP ^
loggerFactoryFF_ l
)FFl m
{GG 	
ifHH 
(HH 
envHH 
.HH 
IsDevelopmentHH !
(HH! "
)HH" #
)HH# $
{II 
appJJ 
.JJ %
UseDeveloperExceptionPageJJ -
(JJ- .
)JJ. /
;JJ/ 0
}KK 
elseLL 
{MM 
loggerFactoryNN 
.NN 
	AddSyslogNN '
(NN' (
ConfigurationOO !
.OO! "
GetValueOO" *
<OO* +
stringOO+ 1
>OO1 2
(OO2 3
$strOO3 D
)OOD E
,OOE F
ConfigurationPP !
.PP! "
GetValuePP" *
<PP* +
intPP+ .
>PP. /
(PP/ 0
$strPP0 A
)PPA B
)PPB C
;PPC D
}QQ 
appSS 
.SS 

UseRoutingSS 
(SS 
)SS 
;SS 
appUU 
.UU 
UseAuthorizationUU  
(UU  !
)UU! "
;UU" #
appVV 
.VV 
UseAuthenticationVV !
(VV! "
)VV" #
;VV# $
appXX 
.XX 
UseEndpointsXX 
(XX 
	endpointsXX &
=>XX' )
{YY 
	endpointsZZ 
.ZZ 
MapControllersZZ (
(ZZ( )
)ZZ) *
;ZZ* +
	endpoints[[ 
.[[ 
MapHealthChecks[[ )
([[) *
$str[[* 8
,[[8 9
new[[: =
HealthCheckOptions[[> P
{\\ 
	Predicate]] 
=]] 
_]]  !
=>]]" $
true]]% )
}^^ 
)^^ 
;^^ 
}__ 
)__ 
;__ 
}`` 	
}aa 
}bb 