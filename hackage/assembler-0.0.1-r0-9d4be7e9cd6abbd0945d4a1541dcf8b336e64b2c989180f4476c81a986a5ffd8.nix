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
      specVersion = "0";
      identifier = { name = "assembler"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Jeff Douglas";
      maintainer = "Jeff Douglas <inbuninbu@gmail.com>";
      author = "Jeff Douglas";
      homepage = "";
      url = "";
      synopsis = "Haskell Assembler";
      description = "An assembler framework written in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-binary" or (errorHandler.buildDepError "ghc-binary"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = {
        "has" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-binary" or (errorHandler.buildDepError "ghc-binary"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }