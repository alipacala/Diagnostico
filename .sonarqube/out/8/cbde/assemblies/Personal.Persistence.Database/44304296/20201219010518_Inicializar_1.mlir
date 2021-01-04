// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_Personal.Persistence.Database.Migrations.Inicializar.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\Migrations\\20201219010518_Inicializar.cs" :47 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\Migrations\\20201219010518_Inicializar.cs" :47 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\Migrations\\20201219010518_Inicializar.cs" :47 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\Migrations\\20201219010518_Inicializar.cs" :49 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\Migrations\\20201219010518_Inicializar.cs" :50 :22) // "Empleados" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\Migrations\\20201219010518_Inicializar.cs" :51 :24) // "Personal" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\Migrations\\20201219010518_Inicializar.cs" :49 :12) // migrationBuilder.DropTable(                  name: "Empleados",                  schema: "Personal") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
