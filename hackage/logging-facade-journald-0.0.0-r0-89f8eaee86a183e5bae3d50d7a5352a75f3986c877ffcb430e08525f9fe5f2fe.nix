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
      identifier = { name = "logging-facade-journald"; version = "0.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Zalora South East Asia Pte Ltd";
      maintainer = "Sönke Hahn <SoenkeHahn@gmail.com>";
      author = "Sönke Hahn <SoenkeHahn@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Journald back-end for logging-facade";
      description = "Journald back-end for logging-facade";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."libsystemd-journal" or (errorHandler.buildDepError "libsystemd-journal"))
          (hsPkgs."logging-facade" or (errorHandler.buildDepError "logging-facade"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging-facade" or (errorHandler.buildDepError "logging-facade"))
            (hsPkgs."libsystemd-journal" or (errorHandler.buildDepError "libsystemd-journal"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }