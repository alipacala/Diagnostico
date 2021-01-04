ã
çC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Clientes\Clientes.Service.EventHandlers\Commands\PacienteCreateCommand.cs
	namespace 	
Clientes
 
. 
Service 
. 
EventHandlers (
.( )
Commands) 1
{ 
public 

class !
PacienteCreateCommand &
:' (
INotification) 6
{ 
public 
string 
Dni 
{ 
get 
;  
set! $
;$ %
}& '
public		 
string		 
Nombres		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
	Apellidos

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
Sexo 
Sexo 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Celular 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ∑
òC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Clientes\Clientes.Service.EventHandlers\Commands\PacienteUpdateContactInfoCommand.cs
	namespace 	
Clientes
 
. 
Service 
. 
EventHandlers (
.( )
Commands) 1
{ 
public 

class ,
 PacienteUpdateContactInfoCommand 1
:2 3
INotification4 A
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
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Celular		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
}

 
} ê#
ÉC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Clientes\Clientes.Service.EventHandlers\PacienteEventHandler.cs
	namespace		 	
Clientes		
 
.		 
Service		 
.		 
EventHandlers		 (
{

 
public 

class  
PacienteEventHandler %
:& ' 
INotificationHandler 
< !
PacienteCreateCommand 2
>2 3
,3 4 
INotificationHandler 
< ,
 PacienteUpdateContactInfoCommand =
>= >
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public  
PacienteEventHandler #
(# $ 
ApplicationDbContext  
context! (
)( )
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
Handle  
(  !!
PacienteCreateCommand! 6
notification7 C
,C D
CancellationTokenE V
cancellationTokenW h
)h i
{ 	
await 
_context 
. 
AddAsync #
(# $
new$ '
Paciente( 0
{1 2
Dni 
= 
notification "
." #
Dni# &
,& '
Nombres 
= 
notification &
.& '
Nombres' .
,. /
	Apellidos 
= 
notification (
.( )
	Apellidos) 2
,2 3
Sexo 
= 
notification #
.# $
Sexo$ (
,( )
Email 
= 
notification $
.$ %
Email% *
,* +
Celular 
= 
notification &
.& '
Celular' .
,. /
Activo   
=   
notification   %
.  % &
Activo  & ,
}!! 
)!! 
;!! 
await## 
_context## 
.## 
SaveChangesAsync## +
(##+ ,
)##, -
;##- .
}$$ 	
public&& 
async&& 
Task&& 
Handle&&  
(&&  !,
 PacienteUpdateContactInfoCommand&&! A
notification&&B N
,&&N O
CancellationToken&&P a
cancellationToken&&b s
)&&s t
{'' 	
var(( 
originalPaciente((  
=((! "
await)) 
_context)) 
.)) 
	Pacientes)) (
.** 
AsNoTracking** !
(**! "
)**" #
.++  
SingleOrDefaultAsync++ )
(++) *
e++* +
=>++, .
e++/ 0
.++0 1
Id++1 3
==++4 6
notification++7 C
.++C D
Id++D F
,++F G
cancellationToken,, )
:,,) *
cancellationToken,,+ <
),,< =
;,,= >
var.. 
updatedPaciente.. 
=..  !
new.." %
Paciente..& .
{// 
Id00 
=00 
originalPaciente00 %
.00% &
Id00& (
,00( )
Dni11 
=11 
originalPaciente11 &
.11& '
Dni11' *
,11* +
Nombres22 
=22 
originalPaciente22 *
.22* +
Nombres22+ 2
,222 3
	Apellidos33 
=33 
originalPaciente33 ,
.33, -
	Apellidos33- 6
,336 7
Sexo44 
=44 
originalPaciente44 '
.44' (
Sexo44( ,
,44, -
Email55 
=55 
notification55 $
.55$ %
Email55% *
,55* +
Celular66 
=66 
notification66 &
.66& '
Celular66' .
,66. /
Activo77 
=77 
originalPaciente77 )
.77) *
Activo77* 0
}88 
;88 
_context:: 
.:: 
Update:: 
(:: 
updatedPaciente:: +
)::+ ,
;::, -
await;; 
_context;; 
.;; 
SaveChangesAsync;; +
(;;+ ,
cancellationToken;;, =
);;= >
;;;> ?
}<< 	
}== 
}>> 