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
      specVersion = "3.12";
      identifier = { name = "pty-mcp-server"; version = "0.0.3.0"; };
      license = "Apache-2.0";
      copyright = "2025-2026 phoityne.hs@gmail.com";
      maintainer = "phoityne.hs@gmail.com";
      author = "phoityne.hs@gmail.com";
      homepage = "https://github.com/phoityne/pty-mcp-server";
      url = "";
      synopsis = "pty-mcp-server";
      description = "README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pty-mcp-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pms-ui-request" or (errorHandler.buildDepError "pms-ui-request"))
            (hsPkgs."pms-ui-response" or (errorHandler.buildDepError "pms-ui-response"))
            (hsPkgs."pms-ui-notification" or (errorHandler.buildDepError "pms-ui-notification"))
            (hsPkgs."pms-infrastructure" or (errorHandler.buildDepError "pms-infrastructure"))
            (hsPkgs."pms-infra-cmdrun" or (errorHandler.buildDepError "pms-infra-cmdrun"))
            (hsPkgs."pms-infra-watch" or (errorHandler.buildDepError "pms-infra-watch"))
            (hsPkgs."pms-application-service" or (errorHandler.buildDepError "pms-application-service"))
            (hsPkgs."pms-domain-service" or (errorHandler.buildDepError "pms-domain-service"))
            (hsPkgs."pms-domain-model" or (errorHandler.buildDepError "pms-domain-model"))
          ];
          buildable = true;
        };
      };
    };
  }