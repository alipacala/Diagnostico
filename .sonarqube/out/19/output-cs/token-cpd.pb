Ù
xC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Service.Queries\DTOs\UsuarioDto.cs
	namespace 	
Identity
 
. 
Service 
. 
Queries "
." #
DTOs# '
{ 
public 

class 

UsuarioDto 
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
NombreCompleto $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
}		 €
|C:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Service.Queries\UsuarioQueryService.cs
	namespace 	
Identity
 
. 
Service 
. 
Queries "
{ 
public 

	interface  
IUsuarioQueryService )
{ 
Task 
< 
DataCollection 
< 

UsuarioDto &
>& '
>' (
GetAllAsync) 4
(4 5
int5 8
page9 =
,= >
int? B
takeC G
,G H
IEnumerableI T
<T U
stringU [
>[ \
users] b
=c d
nulle i
)i j
;j k
Task 
< 

UsuarioDto 
> 
GetAsync !
(! "
string" (
id) +
)+ ,
;, -
} 
public 

class 
UsuarioQueryService $
:% & 
IUsuarioQueryService' ;
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public 
UsuarioQueryService "
(" # 
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
<( )

UsuarioDto) 3
>3 4
>4 5
GetAllAsync6 A
(A B
intB E
pageF J
,J K
intL O
takeP T
,T U
IEnumerableV a
<a b
stringb h
>h i
usersj o
=p q
nullr v
)v w
{ 	
var 

collection 
= 
await "
_context# +
.+ ,
Users, 1
. 
Where 
( 
x 
=> 
users !
==" $
null% )
||* ,
users- 2
.2 3
Contains3 ;
(; <
x< =
.= >
Id> @
)@ A
)A B
.   
OrderBy   
(   
x   
=>   
x   
.    
NombreCompleto    .
)  . /
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
<##2 3

UsuarioDto##3 =
>##= >
>##> ?
(##? @
)##@ A
;##A B
}$$ 	
public&& 
async&& 
Task&& 
<&& 

UsuarioDto&& $
>&&$ %
GetAsync&&& .
(&&. /
string&&/ 5
id&&6 8
)&&8 9
{'' 	
return(( 
((( 
await(( 
_context(( "
.((" #
Users((# (
.((( )
SingleAsync(() 4
(((4 5
x((5 6
=>((7 9
x((: ;
.((; <
Id((< >
==((? A
id((B D
)((D E
)((E F
.((F G
MapTo((G L
<((L M

UsuarioDto((M W
>((W X
(((X Y
)((Y Z
;((Z [
})) 	
}** 
}++ 