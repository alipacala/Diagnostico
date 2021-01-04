è
xC:\Users\AbrahamLIPACALABILLA\source\repos\Diagnostico\src\Services\Common\Services.Common.Mapping\DtoMapperExtension.cs
	namespace 	
Service
 
. 
Common 
. 
Mapping  
{ 
public 

static 
class 
DtoMapperExtension *
{ 
public 
static 
T 
MapTo 
< 
T 
>  
(  !
this! %
object& ,
value- 2
)2 3
{ 	
return		 
JsonSerializer		 !
.		! "
Deserialize		" -
<		- .
T		. /
>		/ 0
(		0 1
JsonSerializer

 
.

 
	Serialize

 (
(

( )
value

) .
)

. /
) 
; 
} 	
} 
} 