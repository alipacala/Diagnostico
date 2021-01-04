// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_Diagnosticos.Persistence.Database.Migrations.Initialize.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :58 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :58 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :58 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :60 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :61 :22) // "DetallesDiagnosticos" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :62 :24) // "Diagnosticos" (StringLiteralExpression)
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :60 :12) // migrationBuilder.DropTable(                  name: "DetallesDiagnosticos",                  schema: "Diagnosticos") (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :64 :12) // Not a variable of known type: migrationBuilder
%6 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :65 :22) // "Diagnosticos" (StringLiteralExpression)
%7 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :66 :24) // "Diagnosticos" (StringLiteralExpression)
%8 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\Migrations\\20210102003146_Initialize.cs" :64 :12) // migrationBuilder.DropTable(                  name: "Diagnosticos",                  schema: "Diagnosticos") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
