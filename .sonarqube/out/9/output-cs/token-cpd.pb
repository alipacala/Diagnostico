§
cC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Domain\Rol.cs
	namespace 	
Identity
 
. 
Domain 
{ 
public 

class 
Rol 
: 
IdentityRole #
{ 
public 
ICollection 
< 

RolUsuario %
>% &
RolesUsuario' 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
}		 
}

 À
jC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Domain\RolUsuario.cs
	namespace 	
Identity
 
. 
Domain 
{ 
public 

class 

RolUsuario 
: 
IdentityUserRole .
<. /
string/ 5
>5 6
{ 
public 
Rol 
Rol 
{ 
get 
; 
set !
;! "
}# $
public 
Usuario 
Usuario 
{  
get! $
;$ %
set& )
;) *
}+ ,
}		 
}

 æ
gC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Identity\Identity.Domain\Usuario.cs
	namespace 	
Identity
 
. 
Domain 
{ 
public 

class 
Usuario 
: 
IdentityUser '
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
public		 
string		 
NombreCompleto		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public

 
ICollection

 
<

 

RolUsuario

 %
>

% &
Roles

' ,
{

- .
get

/ 2
;

2 3
set

4 7
;

7 8
}

9 :
} 
} 