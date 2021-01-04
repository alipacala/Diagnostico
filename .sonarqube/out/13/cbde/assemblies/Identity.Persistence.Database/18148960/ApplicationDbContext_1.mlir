func @_Identity.Persistence.Database.ApplicationDbContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :14 :8) {
^entry (%_builder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :14 :48)
cbde.store %_builder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :14 :48)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :16 :12) // base (BaseExpression)
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :16 :33) // Not a variable of known type: builder
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :16 :12) // base.OnModelCreating(builder) (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :18 :12) // Not a variable of known type: builder
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :18 :37) // "Identity" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :18 :12) // builder.HasDefaultSchema("Identity") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ModelConfig
%7 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :20 :24) // Not a variable of known type: builder
%8 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :20 :12) // ModelConfig(builder) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_Identity.Persistence.Database.ApplicationDbContext.ModelConfig$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :23 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :23 :33)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :23 :33)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UsuarioConfiguration
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :25 :43) // Not a variable of known type: modelBuilder
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :25 :43) // modelBuilder.Entity<Usuario>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :25 :12) // UsuarioConfiguration.Configure(modelBuilder.Entity<Usuario>()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: RolConfiguration
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :26 :39) // Not a variable of known type: modelBuilder
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :26 :39) // modelBuilder.Entity<Rol>() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Identity\\Identity.Persistence.Database\\ApplicationDbContext.cs" :26 :12) // RolConfiguration.Configure(modelBuilder.Entity<Rol>()) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
