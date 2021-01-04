func @_Diagnosticos.Persistence.Database.ApplicationDbContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :16 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :16 :48)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :16 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :18 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :18 :33) // Not a variable of known type: builder
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :18 :12) // base.OnModelCreating(builder) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :21 :12) // Not a variable of known type: builder
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :21 :37) // "Diagnosticos" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :21 :12) // builder.HasDefaultSchema("Diagnosticos") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ModelConfig
%7 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :24 :24) // Not a variable of known type: builder
%8 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :24 :12) // ModelConfig(builder) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Diagnosticos.Persistence.Database.ApplicationDbContext.ModelConfig$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :30 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :30 :33)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :30 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DiagnosticoConfiguration
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :32 :47) // Not a variable of known type: modelBuilder
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :32 :47) // modelBuilder.Entity<Diagnostico>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :32 :12) // DiagnosticoConfiguration.Configure(modelBuilder.Entity<Diagnostico>()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: DetalleDiagnosticoConfiguration
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :33 :54) // Not a variable of known type: modelBuilder
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :33 :54) // modelBuilder.Entity<DetalleDiagnostico>() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Diagnosticos\\Diagnosticos.Persistence.Database\\ApplicationDbContext.cs" :33 :12) // DetalleDiagnosticoConfiguration.Configure(modelBuilder.Entity<DetalleDiagnostico>()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
