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
      specVersion = "3.0";
      identifier = { name = "ghc-eventlog-loopback"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "ghc-eventlog-loopback contributors";
      maintainer = "teofilcamarasu@gmail.com";
      author = "Teo Camarasu";
      homepage = "";
      url = "";
      synopsis = "Let an application read its own eventlog";
      description = "Let an application read its own eventlog";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."ghc-eventlog-loopback" or (errorHandler.buildDepError "ghc-eventlog-loopback"))
          ];
          buildable = true;
        };
      };
    };
  }