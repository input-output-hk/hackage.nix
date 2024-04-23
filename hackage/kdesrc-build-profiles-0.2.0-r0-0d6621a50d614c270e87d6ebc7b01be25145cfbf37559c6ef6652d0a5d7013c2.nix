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
      identifier = { name = "kdesrc-build-profiles"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "2014-2020 Ivan Čukić";
      maintainer = "ivan.cukic at kde.org";
      author = "Ivan Čukić";
      homepage = "https://invent.kde.org";
      url = "";
      synopsis = "Build profiles for kdesrc-build";
      description = "A tool that allows defining build profiles on top of the kdesrc-build system for building KDE packages.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "kdesrc-build-profiles" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ];
          buildable = true;
        };
      };
    };
  }