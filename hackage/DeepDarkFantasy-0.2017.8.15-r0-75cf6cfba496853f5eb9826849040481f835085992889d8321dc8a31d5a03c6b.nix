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
    flags = { werror = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "DeepDarkFantasy"; version = "0.2017.8.15"; };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "lolisa@marisa.moe";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A DSL for creating neural network.";
      description = "Deep Dark Fantasy(DDF) is a domain specific language that allow one to automatically derive derivative of program in DDF. Hence, one can write neural network in DDF and use the derivative program for gradient descend. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "TestPoly" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."DeepDarkFantasy" or (errorHandler.buildDepError "DeepDarkFantasy"))
            ];
          buildable = true;
          };
        "TestXor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."DeepDarkFantasy" or (errorHandler.buildDepError "DeepDarkFantasy"))
            ];
          buildable = true;
          };
        "TestPE" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."DeepDarkFantasy" or (errorHandler.buildDepError "DeepDarkFantasy"))
            ];
          buildable = true;
          };
        };
      };
    }