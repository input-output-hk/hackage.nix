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
      identifier = { name = "cabal-file"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2019-2020  Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "";
      url = "";
      synopsis = "Cabal file access";
      description = "cabal-file is a small library on top of the 'hackage-security' library\nfor accessing the local Hackage repo index cache, and a command-line tool\n'cblfile' which can diff .cabal versions, list package versions,\nsave a cabal file, and show metadata from the index. It uses\nsimple-cabal to display package dependency lists.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hackage-security" or (errorHandler.buildDepError "hackage-security"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."simple-cabal" or (errorHandler.buildDepError "simple-cabal"))
          (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      exes = {
        "cblfile" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-file" or (errorHandler.buildDepError "cabal-file"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."simple-cabal" or (errorHandler.buildDepError "simple-cabal"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            ];
          buildable = true;
          };
        };
      };
    }