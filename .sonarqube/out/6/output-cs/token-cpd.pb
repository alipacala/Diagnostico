ô
zC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Domain\DetalleDiagnostico.cs
	namespace 	
Diagnosticos
 
. 
Domain 
{ 
public 

class 
DetalleDiagnostico #
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
Diagnostico_Id !
{" #
get$ '
;' (
set) ,
;, -
}. /
[

 	

JsonIgnore

	 
]

 
public 
Diagnostico 
Diagnostico &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
Sintoma 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} Ê
sC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Diagnosticos\Diagnosticos.Domain\Diagnostico.cs
	namespace 	
Diagnosticos
 
. 
Domain 
{ 
public 

class 
Diagnostico 
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
< 
DetalleDiagnostico -
>- .
DetallesDiagnostico/ B
{C D
getE H
;H I
setJ M
;M N
}O P
=Q R
newS V
ListW [
<[ \
DetalleDiagnostico\ n
>n o
(o p
)p q
;q r
} 
} 