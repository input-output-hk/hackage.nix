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
      specVersion = "1.8";
      identifier = { name = "shuffle"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "uhc-developers@lists.science.uu.nl";
      author = "UHC Team";
      homepage = "https://github.com/UU-ComputerScience/shuffle";
      url = "";
      synopsis = "Shuffle tool for UHC";
      description = "Shuffle tool used by UHC (Utrecht Haskell Compiler)";
      buildType = "Custom";
      };
    components = {
      exes = {
        "shuffle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."uuagc" or (errorHandler.buildDepError "uuagc"))
            (hsPkgs."uuagc-cabal" or (errorHandler.buildDepError "uuagc-cabal"))
            (hsPkgs."uhc-util" or (errorHandler.buildDepError "uhc-util"))
            ];
          buildable = true;
          };
        };
      };
    }