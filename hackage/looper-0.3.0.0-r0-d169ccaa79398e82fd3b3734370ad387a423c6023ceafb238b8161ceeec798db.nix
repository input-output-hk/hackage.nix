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
      specVersion = "1.12";
      identifier = { name = "looper"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019-2022 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/looper#readme";
      url = "";
      synopsis = "";
      description = "Configure and run recurring jobs indefinitely";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."opt-env-conf" or (errorHandler.buildDepError "opt-env-conf"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "looper-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."looper" or (errorHandler.buildDepError "looper"))
            (hsPkgs."opt-env-conf" or (errorHandler.buildDepError "opt-env-conf"))
            (hsPkgs."opt-env-conf-test" or (errorHandler.buildDepError "opt-env-conf-test"))
            (hsPkgs."sydtest" or (errorHandler.buildDepError "sydtest"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.sydtest-discover.components.exes.sydtest-discover or (pkgs.buildPackages.sydtest-discover or (errorHandler.buildToolDepError "sydtest-discover:sydtest-discover")))
          ];
          buildable = true;
        };
      };
    };
  }