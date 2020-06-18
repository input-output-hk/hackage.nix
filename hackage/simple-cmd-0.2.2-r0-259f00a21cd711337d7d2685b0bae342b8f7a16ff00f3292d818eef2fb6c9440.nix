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
      identifier = { name = "simple-cmd"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "2017-2020 Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "";
      url = "";
      synopsis = "Simple String-based process commands";
      description = "Simple wrappers over System.Process\n(readProcess, readProcessWithExitCode, rawSystem, and createProcess).\nThe idea is to provide some common idioms for calling out to commands\nfrom programs.  For more advanced shell-scripting or streaming\nuse turtle, shelly, command, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }