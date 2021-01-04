// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_Clientes.Persistence.Database.Migrations.Inicializar.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Clientes\\Clientes.Persistence.Database\\Migrations\\20201219122946_Inicializar.cs" :156 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Clientes\\Clientes.Persistence.Database\\Migrations\\20201219122946_Inicializar.cs" :156 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Clientes\\Clientes.Persistence.Database\\Migrations\\20201219122946_Inicializar.cs" :156 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Clientes\\Clientes.Persistence.Database\\Migrations\\20201219122946_Inicializar.cs" :158 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Clientes\\Clientes.Persistence.Database\\Migrations\\20201219122946_Inicializar.cs" :159 :22) // "Pacientes" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Clientes\\Clientes.Persistence.Database\\Migrations\\20201219122946_Inicializar.cs" :160 :24) // "Clientes" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Clientes\\Clientes.Persistence.Database\\Migrations\\20201219122946_Inicializar.cs" :158 :12) // migrationBuilder.DropTable(                  name: "Pacientes",                  schema: "Clientes") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
