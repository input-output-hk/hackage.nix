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
      specVersion = "1.18";
      identifier = { name = "hwk"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2016-2017 Lukas Martinelli,\n2020 Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Lukas Martinelli";
      homepage = "https://github.com/juhp/hwk";
      url = "";
      synopsis = "A modern Haskell based AWK replacement";
      description = "A simple Haskell-based replacement for awk/sed.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hwk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            ];
          buildable = true;
          };
        };
      };
    }