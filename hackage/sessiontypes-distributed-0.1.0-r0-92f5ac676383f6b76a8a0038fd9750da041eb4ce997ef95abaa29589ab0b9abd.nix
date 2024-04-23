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
      identifier = { name = "sessiontypes-distributed"; version = "0.1.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Ferdinand van Walree";
      maintainer = "Ferdinand van Walree";
      author = "Ferdinand van Walree";
      homepage = "https://github.com/Ferdinand-vW/sessiontypes-distributed#readme";
      url = "";
      synopsis = "Session types distributed";
      description = "This package serves as a wrapper over both the Cloud Haskell library (distributed-process) and the sessiontypes library.\nIt provides an interpreter for evaluating session typed programs to Cloud Haskell programs and exposes several combinators for spawning sessions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sessiontypes" or (errorHandler.buildDepError "sessiontypes"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
        ];
        buildable = true;
      };
      tests = {
        "sessiontypes-distributed-spawn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sessiontypes-distributed" or (errorHandler.buildDepError "sessiontypes-distributed"))
            (hsPkgs."sessiontypes" or (errorHandler.buildDepError "sessiontypes"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
          ];
          buildable = true;
        };
        "sessiontypes-distributed-lifted" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sessiontypes-distributed" or (errorHandler.buildDepError "sessiontypes-distributed"))
            (hsPkgs."sessiontypes" or (errorHandler.buildDepError "sessiontypes"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
          ];
          buildable = true;
        };
      };
    };
  }