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
      identifier = { name = "ascii-flatten"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2016 Daniel Choi";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/ascii-flatten";
      url = "";
      synopsis = "Flattens European non-ASCII characaters into ASCII";
      description = "Flattens European non-ASCII characaters into ASCII";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "ascii-flatten" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ascii-flatten" or (errorHandler.buildDepError "ascii-flatten"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }