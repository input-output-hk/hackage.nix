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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "helics"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2014 Hirotomo Moriwaki";
      maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
      homepage = "https://github.com/philopon/helics";
      url = "";
      synopsis = "New Relic® agent SDK wrapper for Haskell.";
      description = "New Relic® agent SDK wrapper for Haskell.\n\nPlease get New Relic Agent SDK(<https://docs.newrelic.com/docs/agents/agent-sdk/using-agent-sdk/getting-started-agent-sdk>) before you install this package.\n\nCopy include\\/lib dir of SDK to system include\\/lib path, or specify extra include\\/lib path when installing this package.\n\n@\ncabal insstall helics --extra-lib-dirs=\$SDK_LIB_DIR --extra-include-dir=\$SDK_INCLUDE_DIR\n@\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          ];
        libs = [
          (pkgs."newrelic-collector-client" or (errorHandler.sysDepError "newrelic-collector-client"))
          (pkgs."newrelic-transaction" or (errorHandler.sysDepError "newrelic-transaction"))
          (pkgs."newrelic-common" or (errorHandler.sysDepError "newrelic-common"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "helics-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."helics" or (errorHandler.buildDepError "helics"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }