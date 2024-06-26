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
      specVersion = "1.0";
      identifier = { name = "AppleScript"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <wss@cs.nott.ac.uk>";
      author = "Wouter Swierstra";
      homepage = "";
      url = "";
      synopsis = "Call AppleScript from Haskell.";
      description = "This package enables you to compile and\nexecute AppleScript from Haskell applications.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        frameworks = [ (pkgs."Carbon" or (errorHandler.sysDepError "Carbon")) ];
        buildable = true;
      };
    };
  }