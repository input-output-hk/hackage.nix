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
      specVersion = "2.0";
      identifier = { name = "skopedate"; version = "0.1"; };
      license = "MIT";
      copyright = "2018-2021,2023 Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/skopedate";
      url = "";
      synopsis = "Check dates of container images";
      description = "This tool checks the dates of a container image in\nregistries.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "skopedate" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.skopedate.components.exes.skopedate or (pkgs.buildPackages.skopedate or (errorHandler.buildToolDepError "skopedate:skopedate")))
          ];
          buildable = true;
        };
      };
    };
  }