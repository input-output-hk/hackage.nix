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
      identifier = { name = "conlogger"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "t.t.mc1192.sf@gmail.com";
      author = "tattsun";
      homepage = "https://github.com/tattsun/conlogger";
      url = "";
      synopsis = "A logger for a concurrent program.";
      description = "A logger for a concurrent program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conlogger" or (errorHandler.buildDepError "conlogger"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }