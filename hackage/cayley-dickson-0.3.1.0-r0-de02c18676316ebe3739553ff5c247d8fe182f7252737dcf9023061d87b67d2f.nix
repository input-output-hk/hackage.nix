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
      identifier = { name = "cayley-dickson"; version = "0.3.1.0"; };
      license = "MIT";
      copyright = "Copyright (c) James M. Lawrence";
      maintainer = "James M. Lawrence <llmjjmll@gmail.com>";
      author = "James M. Lawrence";
      homepage = "https://github.com/lmj/cayley-dickson";
      url = "";
      synopsis = "Complex numbers, quaternions, octonions, sedenions, etc.";
      description = "Cayley-Dickson constructions (complex numbers, quaternions,\noctonions, sedenions, etc.) over general scalars without\nlimit to the number of dimensions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }