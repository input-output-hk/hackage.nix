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
      identifier = { name = "frecently"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Jonas Carpay";
      maintainer = "Jonas Carpay <jonascarpay@gmail.com>";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/frecently#readme";
      url = "";
      synopsis = "CLI frecency history";
      description = "Extremely simple CLI frecency histories.\nIntended for adding frecency to tools like dmenu / rofi / fzf.\nSee the README for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "frecently" = {
          depends = [
            (hsPkgs."atomic-write" or (errorHandler.buildDepError "atomic-write"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }