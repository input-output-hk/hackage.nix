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
      identifier = { name = "macrm"; version = "1.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018-2020 Satoshi Ogata";
      maintainer = "satosystems@gmail.com";
      author = "Satoshi Ogata";
      homepage = "https://github.com/satosystems/macrm#readme";
      url = "";
      synopsis = "Alternative rm command for macOS that remove files/dirs to the system trash";
      description = "Please see the README on GitHub at <https://github.com/satosystems/macrm#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."githash" or (errorHandler.buildDepError "githash"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "macrm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."macrm" or (errorHandler.buildDepError "macrm"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."macrm" or (errorHandler.buildDepError "macrm"))
            (hsPkgs."main-tester" or (errorHandler.buildDepError "main-tester"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }