func @_Service.Common.Mapping.DtoMapperExtension.MapTo$T$$object$(none) -> none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Common\\Services.Common.Mapping\\DtoMapperExtension.cs" :6 :8) {
^entry (%_value : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Common\\Services.Common.Mapping\\DtoMapperExtension.cs" :6 :33)
cbde.store %_value, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Common\\Services.Common.Mapping\\DtoMapperExtension.cs" :6 :33)
br ^0

^0: // JumpBlock
// Entity from another assembly: JsonSerializer
// Entity from another assembly: JsonSerializer
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Common\\Services.Common.Mapping\\DtoMapperExtension.cs" :9 :41) // Not a variable of known type: value
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Common\\Services.Common.Mapping\\DtoMapperExtension.cs" :9 :16) // JsonSerializer.Serialize(value) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Common\\Services.Common.Mapping\\DtoMapperExtension.cs" :8 :19) // JsonSerializer.Deserialize<T>(                  JsonSerializer.Serialize(value)              ) (InvocationExpression)
return %3 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Services\\Common\\Services.Common.Mapping\\DtoMapperExtension.cs" :8 :12)

^1: // ExitBlock
cbde.unreachable

}
