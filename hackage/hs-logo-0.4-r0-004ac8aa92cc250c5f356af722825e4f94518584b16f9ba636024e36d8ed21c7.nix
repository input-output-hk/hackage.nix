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
      specVersion = "1.6";
      identifier = { name = "hs-logo"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "http://deepakjois.github.com/hs-logo";
      url = "";
      synopsis = "Logo interpreter written in Haskell";
      description = "Interpreter for the Logo programming language,\nspecialised for turtle graphics.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hs-logo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."parsec-numbers" or (errorHandler.buildDepError "parsec-numbers"))
            (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-contrib" or (errorHandler.buildDepError "diagrams-contrib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            ];
          buildable = true;
          };
        };
      };
    }