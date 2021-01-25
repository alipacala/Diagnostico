Feature: BuscarDiagnostico
	Como: Empleado
	Quiero: Poder buscar un diagnostico por su Id
	Para: Poder analizar el historial del paciente

Scenario: Buscar un diagnostico existente
	Given un diagnostico con el Id 1 agregado en la base de datos
	When se busca el diagnostico por el Id 1
	Then se pueden ver los datos del diagnostico

Scenario: Buscar un diagnostico inexistente
	Given una base de datos que no tiene un diagnostico con Id 1
	When se busca el diagnostico por el Id 1
	Then se muestra un mensaje de error