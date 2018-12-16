{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.1.0";
      identifier = {
        name = "lambda-ast";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "";
      url = "";
      synopsis = "Untyped Lambda Calculus Abstract Syntax Tree";
      description = "An AST for the untyped lambda calculus. The AST is parameterized by symbol type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }