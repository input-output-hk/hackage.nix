{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "ParserFunction";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Enzo Haussecker";
      homepage = "";
      url = "";
      synopsis = "An algorithm for parsing Expressions.";
      description = "The centerpiece of this package is a function called \"expressionToDouble\", which parses an expression (in the form of a string) and returns a Double. Examples of this function can be found by viewing the source code for this module.";
      buildType = "Simple";
    };
    components = {
      "ParserFunction" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ];
      };
    };
  }