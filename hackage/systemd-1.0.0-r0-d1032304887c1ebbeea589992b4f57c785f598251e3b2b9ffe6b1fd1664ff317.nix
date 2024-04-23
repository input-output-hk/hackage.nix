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
      identifier = { name = "systemd"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "romain.gerard@erebe.eu";
      author = "Erèbe";
      homepage = "https://github.com/erebe/systemd";
      url = "";
      synopsis = "Systemd facilities (Socket activation, Notify)";
      description = "A module for Systemd facilities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "daemon-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."systemd" or (errorHandler.buildDepError "systemd"))
          ];
          buildable = true;
        };
      };
    };
  }