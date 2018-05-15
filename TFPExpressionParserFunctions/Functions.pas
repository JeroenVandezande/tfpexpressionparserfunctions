namespace Expressions.Functions;

interface

uses
  System.Collections.Generic,
  Essy.Math,
  fpexprpars;

type

  TINternalTools = assembly static class
  public
    class method GetListOfDoublesWithoutNaNValues(aValues: TExprParameterArray): List<Double>;
  end;

  TLNFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'The natural logarithm';
    property Name: String read 'LN';
    property MaxNumberOfArgs: Integer read 1;
  end;

  TIIFFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Intermediate If';
    property Name: String read 'IIF';
    property MaxNumberOfArgs: Integer read 3;
  end;

  TCVFunctionP = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates the coefficient of variation of the whole population';
    property Name: String read 'CV_P';
    property MaxNumberOfArgs: Integer read 10;
  end;

  TCVFunctionS = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates the coefficient of variation of the sample population';
    property Name: String read 'CV_S';
    property MaxNumberOfArgs: Integer read 10;
  end;

  TAverageFunction  = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates the average of the whole population';
    property Name: String read 'AVERAGE';
    property MaxNumberOfArgs: Integer read 10;
  end;

  TSTDevFunctionP = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates the standard deviation of the whole population';
    property Name: String read 'STDEV_P';
    property MaxNumberOfArgs: Integer read 10;
  end;

  TSTDevFunctionS = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates the standard deviation of the sample population';
    property Name: String read 'STDEV_S';
    property MaxNumberOfArgs: Integer read 10;
  end;

  TLDAFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates the largest distance to the average';
    property Name: String read 'LDA';
    property MaxNumberOfArgs: Integer read 10;
  end;

  TDiffPFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates the percentage of the difference between the two values';
    property Name: String read 'DIFFP';
    property MaxNumberOfArgs: Integer read 2;
  end;

  TSqrtFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Calculates Square Root';
    property Name: String read 'SQRT';
    property MaxNumberOfArgs: Integer read 1;
  end;

  TExpFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'The number e raised to the power d.';
    property Name: String read 'EXP';
    property MaxNumberOfArgs: Integer read 1;
  end;

  TLog10Function = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Returns the base 10 logarithm of a specified number.';
    property Name: String read 'LOG10';
    property MaxNumberOfArgs: Integer read 1;
  end;

  TToTextFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.String;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'converts a floating point value into a text value';
    property Name: String read 'ToText';
    property MaxNumberOfArgs: Integer read 1;
  end;

  TCountFunction = sealed public class(IFormulaFunction)
  private
  public
    property ResultType: TResultType read TResultType.Float;
    method Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
    method MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
    property Description: String read 'Counts the occurences of True or numerical values greater than 0';
    property Name: String read 'Count';
    property MaxNumberOfArgs: Integer read 20;
  end;

implementation

class method TINternalTools.GetListOfDoublesWithoutNaNValues(aValues: TExprParameterArray): List<Double>;
begin
  result := new List<Double>();
  for each v in aValues do
  begin
    if v.ResultType <> TResultType.Float then continue;
    var val := v.ResFloat;
    if not Double.IsNaN(val) then result.Add(val);
  end;
end;

method TLog10Function.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var val := Args[0].ResFloat;
  aResult.ResFloat := Math.Log10(val);
end;

method TLog10Function.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := true;
end;

method TLNFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var val := Args[0].ResFloat;
  aResult.ResFloat := Math.Log(val);
end;

method TLNFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
   result := true;
end;

method TToTextFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var val := Args[0].ResFloat;
  aResult.ResString := val.ToString("0.000");
end;

method TToTextFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := true;
end;

method TCVFunctionP.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var tempList := TINternalTools.GetListOfDoublesWithoutNaNValues(Args);
  aResult.ResFloat := Statistical.CV_P(tempList);
end;

method TCVFunctionP.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := true;
end;

method TSTDevFunctionP.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var tempList := TINternalTools.GetListOfDoublesWithoutNaNValues(Args);
  aResult.ResFloat := Statistical.StandardDeviation_P(tempList);
end;

method TSTDevFunctionP.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := true;
end;

method TLDAFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var tempList := TINternalTools.GetListOfDoublesWithoutNaNValues(Args);
  var mean := Statistical.Average(tempList);
  var maxVal := Double.MinValue;
  for each v in tempList do
  begin
    var val := Math.Abs(mean - v);
    if val > maxVal then maxVal := val;
  end;
  aResult.ResFloat := maxVal;
end;

method TLDAFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := true;;
end;

method TSTDevFunctionS.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var tempList := TINternalTools.GetListOfDoublesWithoutNaNValues(Args);
  aResult.ResFloat := Statistical.StandardDeviation_S(tempList);
end;

method TSTDevFunctionS.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := true;
end;

method TAverageFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var tempList := TINternalTools.GetListOfDoublesWithoutNaNValues(Args);
  aResult.ResFloat := Statistical.Average(tempList);
end;

method TAverageFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := true;
end;

method TCVFunctionS.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var tempList := TINternalTools.GetListOfDoublesWithoutNaNValues(Args);
  aResult.ResFloat := Statistical.CV_S(tempList);
end;

method TCVFunctionS.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  result := (Count > 1);
end;

method TSqrtFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  aResult.ResFloat := Math.Sqrt(Args[0].ResFloat);
end;

method TSqrtFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  exit true;
end;

method TExpFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  aResult.ResFloat := Math.Exp(Args[0].ResFloat);
end;

method TExpFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  exit true;
end;

method TIIFFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  aResult.ResFloat := iif(Args[0].ResBoolean, Args[1].ResFloat, Args[2].ResFloat);
end;

method TIIFFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  exit true;
end;

method TDiffPFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  var tempList := TINternalTools.GetListOfDoublesWithoutNaNValues(Args);
  if tempList.Count < 2 then
  begin
    aResult.ResFloat := 100;
    exit;
  end;
  var v1 := tempList[0];
  var v2 := tempList[1];
  aResult.ResFloat := ( Math.Abs(v1 - v2) / ((v1 + v2)/2) ) * 100;
end;

method TDiffPFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  exit (Count < 2) and (aArgType = TResultType.Float);
end;

method TCountFunction.Evaluate(var aResult: TFPExpressionResult; Args: TExprParameterArray);
begin
  aResult.ResFloat := 0; 
  for each arg in Args do
  begin
    if arg.ResultType = TResultType.Boolean then
    begin
      if arg.ResBoolean then aResult.ResFloat := aResult.ResFloat + 1;
    end;
    if arg.ResultType = TResultType.Float then
    begin
      if (arg.ResFloat > 0) then aResult.ResFloat := aResult.ResFloat + 1;
    end;
  end;
end;

method TCountFunction.MultArgsSupported(Count: Int32; aArgType: TResultType): Boolean;
begin
  exit ((aArgType = TResultType.Float) or (aArgType = TResultType.Boolean));
end;


end.