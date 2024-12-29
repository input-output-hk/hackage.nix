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
      specVersion = "3.0";
      identifier = { name = "ui"; version = "1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "mnt@doctorbirch.com";
      author = "dr. Jonas Birch";
      homepage = "";
      url = "";
      synopsis = "Minimalistic console UI (getLine), arrow key support (edit, browse cmd history).";
      description = "The UI library provides a more modern getLine style function for making console based CLIs (command line interfaces). The library provides editing capabilities through the use of arrow keys, as well as browsing through the command history. It is very minimalistic, does only export two functions and doesn't require its own monad (only IO).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ui" or (errorHandler.buildDepError "ui"))
          ];
          buildable = true;
        };
      };
    };
  }