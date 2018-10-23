{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10.1.0";
      identifier = {
        name = "lambda-ast";
        version = "0.0.12";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "";
      url = "";
      synopsis = "Lambda Calculi Abstract Syntax Trees";
      description = "AST's for various Lambda Calculi. Adding more as I need them.";
      buildType = "Simple";
    };
    components = {
      "lambda-ast" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }