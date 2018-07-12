{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ParserFunction";
          version = "0.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ehaussecker@gmail.com";
        author = "Enzo Haussecker";
        homepage = "";
        url = "";
        synopsis = "Utilities for parsing and evaluating mathematical expressions.";
        description = "ParserFunction provides utilities for parsing and evaluating mathematical expressions.\nThe central parsing function in this package is @stringToExpr@, which parses an expression\n(as a string) and returns an expression tree of type Expr (or nothing if the string is malformed).\nExpressions can be evaluated using the function @evaluateExpression@. Examples of these\nfunctions can be found by viewing the source code for this package.";
        buildType = "Simple";
      };
      components = {
        "ParserFunction" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.containers
          ];
        };
      };
    }