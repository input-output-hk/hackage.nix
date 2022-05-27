{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "requirements"; version = "0.7.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jpgarcia@fing.edu.uy";
      author = "Juan García-Garland";
      homepage = "";
      url = "";
      synopsis = "Abstraction to manage user defined Type Errors";
      description = "requirements is a framework to build user-defined type errors.\nUsers condense the arguments of functions that can raise a\ndomain-specific error into a curried data type, the operator.\nThe Require constraint predicates over operators. Ill-formed\noperators require the Error operator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }