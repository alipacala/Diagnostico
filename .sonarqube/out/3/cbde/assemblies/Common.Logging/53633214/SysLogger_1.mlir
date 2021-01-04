func @_Common.Logging.SyslogLoggerProvider.CreateLogger$string$(none) -> none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :22 :8) {
^entry (%_categoryName : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :22 :36)
cbde.store %_categoryName, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :22 :36)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :24 :36) // Not a variable of known type: categoryName
%2 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :24 :50) // Not a variable of known type: _host
%3 = cbde.unknown : i32 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :24 :57) // Not a variable of known type: _port
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :24 :64) // Not a variable of known type: _filter
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :24 :19) // new SyslogLogger(categoryName, _host, _port, _filter) (ObjectCreationExpression)
return %5 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Common.Logging.SyslogLoggerProvider.Dispose$$() -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :27 :8) {
^entry :
br ^0

^0: // ExitBlock
return

}
func @_Common.Logging.SyslogLogger.BeginScope$TState$$TState$(none) -> none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :52 :8) {
^entry (%_state : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :52 :46)
cbde.store %_state, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :52 :46)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: NoopDisposable
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :54 :19) // NoopDisposable.Instance (SimpleMemberAccessExpression)
return %1 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :54 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function IsEnabled(none), it contains poisonous unsupported syntaxes

func @_Common.Logging.SyslogLogger.Log$TState$$Microsoft.Extensions.Logging.LogLevel.Microsoft.Extensions.Logging.EventId.TState.System.Exception.System.Func$TState.System.Exception.string$$(none, none, none, none, none) -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :8) {
^entry (%_logLevel : none, %_eventId : none, %_state : none, %_exception : none, %_formatter : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :32)
cbde.store %_logLevel, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :32)
%1 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :51)
cbde.store %_eventId, %1 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :51)
%2 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :68)
cbde.store %_state, %2 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :68)
%3 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :82)
cbde.store %_exception, %3 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :82)
%4 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :103)
cbde.store %_formatter, %4 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :62 :103)
br ^0

^0: // BinaryBranchBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IsEnabled
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :64 :27) // Not a variable of known type: logLevel
%6 = cbde.unknown : i1 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :64 :17) // IsEnabled(logLevel) (InvocationExpression)
%7 = cbde.unknown : i1 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :64 :16) // !IsEnabled(logLevel) (LogicalNotExpression)
cond_br %7, ^1, ^2 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :64 :16)

^1: // JumpBlock
return loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :66 :16)

^2: // BinaryBranchBlock
%8 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :68 :16) // Not a variable of known type: formatter
%9 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :68 :29) // null (NullLiteralExpression)
%10 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :68 :16) // comparison of unknown type: formatter == null
cond_br %10, ^3, ^4 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :68 :16)

^3: // JumpBlock
%11 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :70 :48) // nameof(formatter) (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :70 :22) // new ArgumentNullException(nameof(formatter)) (ObjectCreationExpression)
cbde.throw %12 :  none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :70 :16)

^4: // BinaryBranchBlock
%13 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :72 :26) // Not a variable of known type: formatter
%14 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :72 :36) // Not a variable of known type: state
%15 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :72 :43) // Not a variable of known type: exception
%16 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :72 :26) // formatter(state, exception) (InvocationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :73 :16) // string (PredefinedType)
%19 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :73 :37) // Not a variable of known type: message
%20 = cbde.unknown : i1 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :73 :16) // string.IsNullOrEmpty(message) (InvocationExpression)
cond_br %20, ^5, ^6 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :73 :16)

^5: // JumpBlock
return loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :75 :16)

^6: // BinaryBranchBlock
%21 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :77 :26) // Not a variable of known type: logLevel
%22 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :77 :39) // Not a variable of known type: message
%23 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :77 :22) // $"{ logLevel }: {message}" (InterpolatedStringExpression)
%24 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :78 :16) // Not a variable of known type: exception
%25 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :78 :29) // null (NullLiteralExpression)
%26 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :78 :16) // comparison of unknown type: exception != null
cond_br %26, ^7, ^8 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :78 :16)

^7: // SimpleBlock
%27 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :16) // Not a variable of known type: message
// Entity from another assembly: Environment
%28 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :27) // Environment.NewLine (SimpleMemberAccessExpression)
// Entity from another assembly: Environment
%29 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :49) // Environment.NewLine (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :27) // Binary expression on unsupported types Environment.NewLine + Environment.NewLine
%31 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :71) // Not a variable of known type: exception
%32 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :71) // exception.ToString() (InvocationExpression)
%33 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :27) // Binary expression on unsupported types Environment.NewLine + Environment.NewLine + exception.ToString()
%34 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :80 :16) // Binary expression on unsupported types message += Environment.NewLine + Environment.NewLine + exception.ToString()
br ^8

^8: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: MapToSyslogLevel
%35 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :82 :47) // Not a variable of known type: logLevel
%36 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :82 :30) // MapToSyslogLevel(logLevel) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Send
%38 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :83 :17) // Not a variable of known type: syslogLevel
%39 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :83 :30) // Not a variable of known type: message
%40 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :83 :12) // Send(syslogLevel, message) (InvocationExpression)
br ^9

^9: // ExitBlock
return

}
// Skipping function Send(none, none), it contains poisonous unsupported syntaxes

func @_Common.Logging.SyslogLogger.MapToSyslogLevel$Microsoft.Extensions.Logging.LogLevel$(none) -> none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :121 :8) {
^entry (%_level : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :121 :48)
cbde.store %_level, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :121 :48)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :123 :16) // Not a variable of known type: level
// Entity from another assembly: LogLevel
%2 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :123 :25) // LogLevel.Critical (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :123 :16) // comparison of unknown type: level == LogLevel.Critical
cond_br %3, ^1, ^2 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :123 :16)

^1: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :124 :23) // Not a variable of known type: SyslogLogLevel
%5 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :124 :23) // SyslogLogLevel.Critical (SimpleMemberAccessExpression)
return %5 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :124 :16)

^2: // BinaryBranchBlock
%6 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :126 :16) // Not a variable of known type: level
// Entity from another assembly: LogLevel
%7 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :126 :25) // LogLevel.Debug (SimpleMemberAccessExpression)
%8 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :126 :16) // comparison of unknown type: level == LogLevel.Debug
cond_br %8, ^3, ^4 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :126 :16)

^3: // JumpBlock
%9 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :127 :23) // Not a variable of known type: SyslogLogLevel
%10 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :127 :23) // SyslogLogLevel.Debug (SimpleMemberAccessExpression)
return %10 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :127 :16)

^4: // BinaryBranchBlock
%11 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :129 :16) // Not a variable of known type: level
// Entity from another assembly: LogLevel
%12 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :129 :25) // LogLevel.Error (SimpleMemberAccessExpression)
%13 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :129 :16) // comparison of unknown type: level == LogLevel.Error
cond_br %13, ^5, ^6 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :129 :16)

^5: // JumpBlock
%14 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :130 :23) // Not a variable of known type: SyslogLogLevel
%15 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :130 :23) // SyslogLogLevel.Error (SimpleMemberAccessExpression)
return %15 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :130 :16)

^6: // BinaryBranchBlock
%16 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :132 :16) // Not a variable of known type: level
// Entity from another assembly: LogLevel
%17 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :132 :25) // LogLevel.Information (SimpleMemberAccessExpression)
%18 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :132 :16) // comparison of unknown type: level == LogLevel.Information
cond_br %18, ^7, ^8 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :132 :16)

^7: // JumpBlock
%19 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :133 :23) // Not a variable of known type: SyslogLogLevel
%20 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :133 :23) // SyslogLogLevel.Info (SimpleMemberAccessExpression)
return %20 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :133 :16)

^8: // BinaryBranchBlock
%21 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :135 :16) // Not a variable of known type: level
// Entity from another assembly: LogLevel
%22 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :135 :25) // LogLevel.None (SimpleMemberAccessExpression)
%23 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :135 :16) // comparison of unknown type: level == LogLevel.None
cond_br %23, ^9, ^10 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :135 :16)

^9: // JumpBlock
%24 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :136 :23) // Not a variable of known type: SyslogLogLevel
%25 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :136 :23) // SyslogLogLevel.Info (SimpleMemberAccessExpression)
return %25 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :136 :16)

^10: // BinaryBranchBlock
%26 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :138 :16) // Not a variable of known type: level
// Entity from another assembly: LogLevel
%27 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :138 :25) // LogLevel.Trace (SimpleMemberAccessExpression)
%28 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :138 :16) // comparison of unknown type: level == LogLevel.Trace
cond_br %28, ^11, ^12 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :138 :16)

^11: // JumpBlock
%29 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :139 :23) // Not a variable of known type: SyslogLogLevel
%30 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :139 :23) // SyslogLogLevel.Info (SimpleMemberAccessExpression)
return %30 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :139 :16)

^12: // BinaryBranchBlock
%31 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :141 :16) // Not a variable of known type: level
// Entity from another assembly: LogLevel
%32 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :141 :25) // LogLevel.Warning (SimpleMemberAccessExpression)
%33 = cbde.unknown : i1  loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :141 :16) // comparison of unknown type: level == LogLevel.Warning
cond_br %33, ^13, ^14 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :141 :16)

^13: // JumpBlock
%34 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :142 :23) // Not a variable of known type: SyslogLogLevel
%35 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :142 :23) // SyslogLogLevel.Warn (SimpleMemberAccessExpression)
return %35 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :142 :16)

^14: // JumpBlock
%36 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :144 :19) // Not a variable of known type: SyslogLogLevel
%37 = constant unit loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :144 :19) // SyslogLogLevel.Info (SimpleMemberAccessExpression)
return %37 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :144 :12)

^15: // ExitBlock
cbde.unreachable

}
func @_Common.Logging.NoopDisposable.Dispose$$() -> () loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :163 :8) {
^entry :
br ^0

^0: // ExitBlock
return

}
func @_Common.Logging.SyslogLoggerExtensions.AddSyslog$Microsoft.Extensions.Logging.ILoggerFactory.string.int.System.Func$string.Microsoft.Extensions.Logging.LogLevel.bool$$(none, none, i32, none) -> none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :170 :8) {
^entry (%_factory : none, %_host : none, %_port : i32, %_filter : none):
%0 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :170 :47)
cbde.store %_factory, %0 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :170 :47)
%1 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :171 :40)
cbde.store %_host, %1 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :171 :40)
%2 = cbde.alloca i32 loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :171 :53)
cbde.store %_port, %2 : memref<i32> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :171 :53)
%3 = cbde.alloca none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :172 :40)
cbde.store %_filter, %3 : memref<none> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :172 :40)
br ^0

^0: // JumpBlock
%4 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :174 :12) // Not a variable of known type: factory
%5 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :174 :57) // Not a variable of known type: host
%6 = cbde.load %2 : memref<i32> loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :174 :63)
%7 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :174 :69) // Not a variable of known type: filter
%8 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :174 :32) // new SyslogLoggerProvider(host, port, filter) (ObjectCreationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :174 :12) // factory.AddProvider(new SyslogLoggerProvider(host, port, filter)) (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :175 :19) // Not a variable of known type: factory
return %10 : none loc("C:\\Users\\AbrahamLIPACALABILLA\\source\\repos\\Diagnostico\\src\\Common\\Common.Logging\\SysLogger.cs" :175 :12)

^1: // ExitBlock
cbde.unreachable

}
