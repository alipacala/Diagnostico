¡
çC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Personal\Personal.Service.EventHandlers\Commands\EmpleadoCreateCommand.cs
	namespace 	
Personal
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
class !
EmpleadoCreateCommand &
:' (
INotification) 6
{ 
public 
string 
Dni 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Nombres 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
	Apellidos		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
bool

 
Activo

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} ë
ìC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Personal\Personal.Service.EventHandlers\Commands\EmpleadoUpdateActivoCommand.cs
	namespace 	
Personal
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
class '
EmpleadoUpdateActivoCommand ,
:- .
INotification/ <
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
public 
bool 
Activo 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 Ï
ÉC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Personal\Personal.Service.EventHandlers\EmpleadoEventHandler.cs
	namespace		 	
Personal		
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
EmpleadoEventHandler %
:& ' 
INotificationHandler 
< !
EmpleadoCreateCommand 2
>2 3
,3 4 
INotificationHandler 
< '
EmpleadoUpdateActivoCommand 8
>8 9
{ 
private 
readonly  
ApplicationDbContext -
_context. 6
;6 7
public  
EmpleadoEventHandler #
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
EmpleadoCreateCommand! 6
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
Empleado( 0
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
,2 3
Activo 
= 
notification %
.% &
Activo& ,
} 
) 
; 
await   
_context   
.   
SaveChangesAsync   +
(  + ,
)  , -
;  - .
}!! 	
public## 
async## 
Task## 
Handle##  
(##  !'
EmpleadoUpdateActivoCommand##! <
notification##= I
,##I J
CancellationToken##K \
cancellationToken##] n
)##n o
{$$ 	
var%% 
originalEmpleado%%  
=%%! "
await&& 
_context&& 
.&& 
	Empleados&& (
.'' 
AsNoTracking'' !
(''! "
)''" #
.((  
SingleOrDefaultAsync(( )
((() *
e((* +
=>((, .
e((/ 0
.((0 1
Id((1 3
==((4 6
notification((7 C
.((C D
Id((D F
,((F G
cancellationToken)) )
:))) *
cancellationToken))+ <
)))< =
;))= >
var++ 
updatedEmpleado++ 
=++  !
new++" %
Empleado++& .
{,, 
Id-- 
=-- 
originalEmpleado-- %
.--% &
Id--& (
,--( )
Dni.. 
=.. 
originalEmpleado.. &
...& '
Dni..' *
,..* +
Nombres// 
=// 
originalEmpleado// *
.//* +
Nombres//+ 2
,//2 3
	Apellidos00 
=00 
originalEmpleado00 ,
.00, -
	Apellidos00- 6
,006 7
Activo11 
=11 
notification11 %
.11% &
Activo11& ,
}22 
;22 
_context44 
.44 
Update44 
(44 
updatedEmpleado44 +
)44+ ,
;44, -
await55 
_context55 
.55 
SaveChangesAsync55 +
(55+ ,
cancellationToken55, =
)55= >
;55> ?
}66 	
}77 
}88 