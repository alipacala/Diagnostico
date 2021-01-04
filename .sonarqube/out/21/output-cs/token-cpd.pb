Ä
ˆC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Service.Queries\DiagnosticoQueryService.cs
	namespace

 	
Diagnosticos


 
.

 
Service

 
.

 
Queries

 &
{ 
public 

	interface $
IDiagnosticoQueryService -
{ 
Task 
< 
DataCollection 
< 
DiagnosticoDto *
>* +
>+ ,
GetAllAsync- 8
(8 9
int9 <
page= A
,A B
intC F
takeG K
)K L
;L M
Task 
< 
DiagnosticoDto 
> 
GetAsync %
(% &
int& )
id* ,
), -
;- .
} 
public 

class #
DiagnosticoQueryService (
:) *$
IDiagnosticoQueryService+ C
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public #
DiagnosticoQueryService &
(& ' 
ApplicationDbContext  
context! (
)( )
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
DataCollection (
<( )
DiagnosticoDto) 7
>7 8
>8 9
GetAllAsync: E
(E F
intF I
pageJ N
,N O
intP S
takeT X
)X Y
{ 	
var 

collection 
= 
await "
_context# +
.+ ,
Diagnosticos, 8
. 
Include 
( 
x 
=> 
x 
.  
DetallesDiagnostico  3
)3 4
.   
OrderByDescending   "
(  " #
x  # $
=>  % '
x  ( )
.  ) *
Id  * ,
)  , -
.!! 
GetPagedAsync!! 
(!! 
page!! #
,!!# $
take!!% )
)!!) *
;!!* +
return## 

collection## 
.## 
MapTo## #
<### $
DataCollection##$ 2
<##2 3
DiagnosticoDto##3 A
>##A B
>##B C
(##C D
)##D E
;##E F
}$$ 	
public&& 
async&& 
Task&& 
<&& 
DiagnosticoDto&& (
>&&( )
GetAsync&&* 2
(&&2 3
int&&3 6
id&&7 9
)&&9 :
{'' 	
return(( 
((( 
await(( 
_context(( "
.((" #
Diagnosticos((# /
.((/ 0
Include((0 7
(((7 8
x((8 9
=>((: <
x((= >
.((> ?
DetallesDiagnostico((? R
)((R S
.((S T
SingleAsync((T _
(((_ `
x((` a
=>((b d
x((e f
.((f g
Id((g i
==((j l
id((m o
)((o p
)((p q
.((q r
MapTo((r w
<((w x
DiagnosticoDto	((x †
>
((† ‡
(
((‡ ˆ
)
((ˆ ‰
;
((‰ Š
})) 	
}** 
}++ Ã
‹C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Service.Queries\DTOs\DetalleDiagnosticoDto.cs
	namespace 	
Diagnosticos
 
. 
Service 
. 
Queries &
.& '
DTOs' +
{ 
public 

class !
DetalleDiagnosticoDto &
{ 
public 
string 
Sintoma 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} «
„C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Service.Queries\DTOs\DiagnosticoDto.cs
	namespace 	
Diagnosticos
 
. 
Service 
. 
Queries &
.& '
DTOs' +
{ 
public 

class 
DiagnosticoDto 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public		 
int		 
Empleado_Id		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
int

 
Paciente_Id
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
+ ,
public 
DateTime 
Fecha 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

Enfermedad  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
ICollection 
< !
DetalleDiagnosticoDto 0
>0 1
DetallesDiagnostico2 E
{F G
getH K
;K L
setM P
;P Q
}R S
=T U
newV Y
ListZ ^
<^ _!
DetalleDiagnosticoDto_ t
>t u
(u v
)v w
;w x
} 
} 