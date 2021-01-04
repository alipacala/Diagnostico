func @_Personal.Persistence.Database.ApplicationDbContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :16 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :16 :48)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :16 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :18 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :18 :33) // Not a variable of known type: builder
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :18 :12) // base.OnModelCreating(builder) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :20 :12) // Not a variable of known type: builder
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :20 :37) // "Personal" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :20 :12) // builder.HasDefaultSchema("Personal") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ModelConfig
%7 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :22 :24) // Not a variable of known type: builder
%8 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :22 :12) // ModelConfig(builder) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Personal.Persistence.Database.ApplicationDbContext.ModelConfig$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :27 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :27 :33)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :27 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: EmpleadoConfiguration
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :29 :44) // Not a variable of known type: modelBuilder
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :29 :44) // modelBuilder.Entity<Empleado>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Personal\\Personal.Persistence.Database\\ApplicationDbContext.cs" :29 :12) // EmpleadoConfiguration.Configure(modelBuilder.Entity<Empleado>()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
