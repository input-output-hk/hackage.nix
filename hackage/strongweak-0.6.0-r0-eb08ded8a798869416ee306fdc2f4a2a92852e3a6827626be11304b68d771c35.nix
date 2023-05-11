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
      specVersion = "1.12";
      identifier = { name = "strongweak"; version = "0.6.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/strongweak#readme";
      url = "";
      synopsis = "Convert between strong and weak representations of types";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acc" or (errorHandler.buildDepError "acc"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."acc" or (errorHandler.buildDepError "acc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."refined1" or (errorHandler.buildDepError "refined1"))
            (hsPkgs."strongweak" or (errorHandler.buildDepError "strongweak"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-sized" or (errorHandler.buildDepError "vector-sized"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }