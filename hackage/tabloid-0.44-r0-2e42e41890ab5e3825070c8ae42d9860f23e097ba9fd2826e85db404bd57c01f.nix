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
      specVersion = "1.2";
      identifier = { name = "tabloid"; version = "0.44"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "";
      url = "";
      synopsis = "View the output of shell commands in a table";
      description = "GUI for shell commands and log analysis";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tabloid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = true;
          };
        };
      };
    }