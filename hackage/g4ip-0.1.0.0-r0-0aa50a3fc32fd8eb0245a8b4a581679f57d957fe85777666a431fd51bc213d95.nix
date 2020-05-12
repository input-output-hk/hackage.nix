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
      identifier = { name = "g4ip"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "coskuacay@gmail.com";
      author = "Josh Acay";
      homepage = "https://github.com/cacay/G4ip";
      url = "";
      synopsis = "A theorem prover for propositional logic that uses G4ip";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test-g4ip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."g4ip" or (errorHandler.buildDepError "g4ip"))
            ];
          buildable = true;
          };
        };
      };
    }