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
      identifier = { name = "tempo"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Timur Rubeko";
      maintainer = "timur@rubeko.com";
      author = "Timur Rubeko";
      homepage = "http://github.com/candidtim/tempo#readme";
      url = "";
      synopsis = "Command-line tool to log time-tracking information into JIRA Tempo plugin";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "tempo-git" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tempo" or (errorHandler.buildDepError "tempo"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        "tempo-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tempo" or (errorHandler.buildDepError "tempo"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tempo-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tempo" or (errorHandler.buildDepError "tempo"))
            ];
          buildable = true;
          };
        };
      };
    }