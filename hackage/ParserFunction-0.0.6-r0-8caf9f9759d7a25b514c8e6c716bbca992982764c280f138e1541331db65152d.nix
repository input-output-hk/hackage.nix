{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ParserFunction"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ehaussecker@gmail.com";
      author = "Enzo Haussecker";
      homepage = "";
      url = "";
      synopsis = "Utilities for parsing and evaluating mathematical expressions.";
      description = "ParserFunction provides utilities for parsing and evaluating mathematical expressions.\nThe central parsing function in this package is @stringToExpr@, which parses a string-expression\n(e.g. \\\"3*x+2\\\") and returns a Maybe expression tree of type Expr (e.g. Just (Add (Mul (Num 3.0) (Var \\'x\\')) (Num 2.0))).\nThis type is suitable for performing symbolic logic. Expressions can then be evaluated using the function @evaluate@\n(e.g. @evaluate@ (fromAscList [(\\\"x\\\",2)]) (Add (Mul (Num 3.0) (Var \\'x\\'))) (Num 2.0) would give 8.0).\nIf you wish to evaluate a string-expression without any intermediate symbolic logic operations, simply use the function\n@evaluateExpression@ (e.g. @evaluateExpression@ \\\"3*x+2\\\" [(\\'x\\',4)] gives 14.0). More examples of these functions can be found\nby viewing the source code for this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }