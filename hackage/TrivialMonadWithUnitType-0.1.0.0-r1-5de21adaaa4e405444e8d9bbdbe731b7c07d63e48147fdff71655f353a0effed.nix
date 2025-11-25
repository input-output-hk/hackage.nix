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
      specVersion = "2.4";
      identifier = { name = "TrivialMonadWithUnitType"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "retablies@hotmail.com";
      author = "Alexis Soutient";
      homepage = "";
      url = "";
      synopsis = "Trivial monad with Unit type";
      description = "This code demonstrates how algebraic structures can be encoded in types. You can't actually \"embed\" any information, because the structure is trivial: it always erases any input.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }