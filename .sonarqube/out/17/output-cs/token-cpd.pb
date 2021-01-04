Ó

ŒC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Service.EventHandlers\Commands\UsuarioCreateCommand.cs
	namespace 	
Identity
 
. 
Service 
. 
EventHandlers (
.( )
Commands) 1
{ 
public 

class  
UsuarioCreateCommand %
:& '
IRequest( 0
<0 1
IdentityResult1 ?
>? @
{ 
[		 	
Required			 
]		 
public

 
int

 
Empleado_Id

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Required	 
] 
public 
string 
NombreCompleto $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
] 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} «
‹C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Service.EventHandlers\Commands\UsuarioLoginCommand.cs
	namespace 	
Identity
 
. 
Service 
. 
EventHandlers (
.( )
Commands) 1
{ 
public 

class 
UsuarioLoginCommand $
:% &
IRequest' /
</ 0
IdentityAccess0 >
>> ?
{ 
[		 	
Required			 
]		 
public

 
string

 
UserName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
[ 	
Required	 
] 
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Þ
‡C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Service.EventHandlers\Responses\IdentityAccess.cs
	namespace 	
Identity
 
. 
Service 
. 
EventHandlers (
.( )
	Responses) 2
{ 
public 

class 
IdentityAccess 
{ 
public 
bool 
	Succeeded 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
AccessToken !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ¢
ˆC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Service.EventHandlers\UsuarioCreateEventHandler.cs
	namespace 	
Identity
 
. 
Service 
. 
EventHandlers (
{		 
public

 

class

 %
UsuarioCreateEventHandler

 *
:

+ ,
IRequestHandler

- <
<

< = 
UsuarioCreateCommand

= Q
,

Q R
IdentityResult

S a
>

a b
{ 
private 
readonly 
UserManager $
<$ %
Usuario% ,
>, -
_userManager. :
;: ;
public %
UsuarioCreateEventHandler (
(( )
UserManager 
< 
Usuario 
>  
userManager! ,
), -
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
< 
IdentityResult (
>( )
Handle* 0
(0 1 
UsuarioCreateCommand1 E
notificationF R
,R S
CancellationTokenT e
cancellationTokenf w
)w x
{ 	
var 
entry 
= 
new 
Usuario #
{ 
Empleado_Id 
= 
notification *
.* +
Empleado_Id+ 6
,6 7
NombreCompleto 
=  
notification! -
.- .
NombreCompleto. <
,< =
UserName 
= 
notification '
.' (
UserName( 0
,0 1
} 
; 
return 
await 
_userManager %
.% &
CreateAsync& 1
(1 2
entry2 7
,7 8
notification9 E
.E F
PasswordF N
)N O
;O P
} 	
} 
}   °5
‡C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Service.EventHandlers\UsuarioLoginEventHandler.cs
	namespace 	
Identity
 
. 
Service 
. 
EventHandlers (
{ 
public 

class $
UsuarioLoginEventHandler )
:* +
IRequestHandler 
< 
UsuarioLoginCommand +
,+ ,
IdentityAccess- ;
>; <
{ 
private 
readonly 
SignInManager &
<& '
Usuario' .
>. /
_signInManager0 >
;> ?
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public $
UsuarioLoginEventHandler '
(' (
SignInManager 
< 
Usuario !
>! "
signInManager# 0
,0 1 
ApplicationDbContext  
context! (
,( )
IConfiguration 
configuration (
)( )
{   	
_signInManager!! 
=!! 
signInManager!! *
;!!* +
_context"" 
="" 
context"" 
;"" 
_configuration## 
=## 
configuration## *
;##* +
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IdentityAccess&& (
>&&( )
Handle&&* 0
(&&0 1
UsuarioLoginCommand&&1 D
notification&&E Q
,&&Q R
CancellationToken&&S d
cancellationToken&&e v
)&&v w
{'' 	
var(( 
result(( 
=(( 
new(( 
IdentityAccess(( +
(((+ ,
)((, -
;((- .
var** 
user** 
=** 
await** 
_context** %
.**% &
Users**& +
.**+ ,
SingleAsync**, 7
(**7 8
x**8 9
=>**: <
x**= >
.**> ?
UserName**? G
==**H J
notification**K W
.**W X
UserName**X `
)**` a
;**a b
var++ 
response++ 
=++ 
await++  
_signInManager++! /
.++/ 0$
CheckPasswordSignInAsync++0 H
(++H I
user++I M
,++M N
notification++O [
.++[ \
Password++\ d
,++d e
false++f k
)++k l
;++l m
if-- 
(-- 
response-- 
.-- 
	Succeeded-- "
)--" #
{.. 
result// 
.// 
	Succeeded//  
=//! "
true//# '
;//' (
await00 
GenerateToken00 #
(00# $
user00$ (
,00( )
result00* 0
)000 1
;001 2
}11 
return33 
result33 
;33 
}44 	
private66 
async66 
Task66 
GenerateToken66 (
(66( )
Usuario66) 0
user661 5
,665 6
IdentityAccess667 E
identity66F N
)66N O
{77 	
var88 
	secretKey88 
=88 
_configuration88 *
.88* +

GetSection88+ 5
(885 6
$str886 A
)88A B
.88B C
Value88C H
;88H I
var99 
key99 
=99 
Encoding99 
.99 
ASCII99 $
.99$ %
GetBytes99% -
(99- .
	secretKey99. 7
)997 8
;998 9
var;; 
claims;; 
=;; 
new;; 
List;; !
<;;! "
Claim;;" '
>;;' (
{<< 
new== 
Claim== 
(== 

ClaimTypes== $
.==$ %
NameIdentifier==% 3
,==3 4
user==5 9
.==9 :
Id==: <
)==< =
,=== >
new>> 
Claim>> 
(>> 

ClaimTypes>> $
.>>$ %
Name>>% )
,>>) *
user>>+ /
.>>/ 0
NombreCompleto>>0 >
)>>> ?
,>>? @
}?? 
;?? 
varAA 
rolesAA 
=AA 
awaitAA 
_contextAA &
.AA& '
RolesAA' ,
.BB 
WhereBB 
(BB 
xBB 
=>BB 
xBB 
.BB 
RolesUsuarioBB *
.BB* +
AnyBB+ .
(BB. /
yBB/ 0
=>BB1 3
yBB4 5
.BB5 6
UserIdBB6 <
==BB= ?
userBB@ D
.BBD E
IdBBE G
)BBG H
)BBH I
.CC 
ToListAsyncCC 
(CC 
)CC 
;CC 
foreachEE 
(EE 
varEE 
roleEE 
inEE  
rolesEE! &
)EE& '
{FF 
claimsGG 
.GG 
AddGG 
(GG 
newHH 
ClaimHH 
(HH 

ClaimTypesHH (
.HH( )
RoleHH) -
,HH- .
roleHH/ 3
.HH3 4
NameHH4 8
)HH8 9
)II 
;II 
}JJ 
varLL 
tokenDescriptorLL 
=LL  !
newLL" %#
SecurityTokenDescriptorLL& =
{MM 
SubjectNN 
=NN 
newNN 
ClaimsIdentityNN ,
(NN, -
claimsNN- 3
)NN3 4
,NN4 5
ExpiresOO 
=OO 
DateTimeOO "
.OO" #
UtcNowOO# )
.OO) *
AddDaysOO* 1
(OO1 2
$numOO2 3
)OO3 4
,OO4 5
SigningCredentialsPP "
=PP# $
newPP% (
SigningCredentialsPP) ;
(PP; <
newQQ  
SymmetricSecurityKeyQQ ,
(QQ, -
keyQQ- 0
)QQ0 1
,QQ1 2
SecurityAlgorithmsRR &
.RR& '
HmacSha256SignatureRR' :
)SS 
}TT 
;TT 
varVV 
tokenHandlerVV 
=VV 
newVV "#
JwtSecurityTokenHandlerVV# :
(VV: ;
)VV; <
;VV< =
varWW 
createdTokenWW 
=WW 
tokenHandlerWW +
.WW+ ,
CreateTokenWW, 7
(WW7 8
tokenDescriptorWW8 G
)WWG H
;WWH I
identityYY 
.YY 
AccessTokenYY  
=YY! "
tokenHandlerYY# /
.YY/ 0

WriteTokenYY0 :
(YY: ;
createdTokenYY; G
)YYG H
;YYH I
}ZZ 	
}[[ 
}\\ 