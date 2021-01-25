Feature: Determinar Enfermedad
	Como: Empleado
	Quiero: Poder determinar una enfermedad dada una serie de sintomas
	Para: Poder registrar un nuevo diagnóstico de un paciente dado

Scenario: Determinar la enfermedad de un diagnostico con algunos detalles
	Given un diagnostico que tiene detalles de diagnostico
	When se determina la enfermedad
	Then la enfermedad es una de las predefinidas

Scenario: Determinar la enfermedad de un diagnostico con todos los sintomas de covid
	Given un diagnostico que tiene detalles de diagnostico con sintomas de covid
	When se determina la enfermedad
	Then la enfermedad es covid

Scenario: Determinar la enfermedad de un diagnostico sin detalles
	Given un diagnostico sin detalles de diagnostico
	When se determina la enfermedad
	Then muestra un error al usuario

Scenario: Determinar la enfermedad de un diagnostico con sintomas no predefinidos
	Given un diagnostico con detalles con sintomas no predefinidos
	When se determina la enfermedad
	Then muestra un error al usuario