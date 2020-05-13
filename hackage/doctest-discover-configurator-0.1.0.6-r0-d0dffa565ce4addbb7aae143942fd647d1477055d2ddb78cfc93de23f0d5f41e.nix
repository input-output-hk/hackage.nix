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
      identifier = {
        name = "doctest-discover-configurator";
        version = "0.1.0.6";
        };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ricky@elrod.me";
      author = "Karun Ramakrishnan, Ricky Elrod";
      homepage = "http://github.com/relrod/doctest-discover-noaeson";
      url = "";
      synopsis = "Easy way to run doctests via cabal (no aeson dependency, uses configurator instead)";
      description = "doctest-discover provides an easy way to run doctests via cabal";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "doctest-discover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-discover-configurator" or (errorHandler.buildDepError "doctest-discover-configurator"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }