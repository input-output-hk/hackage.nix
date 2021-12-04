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
      specVersion = "2.4";
      identifier = { name = "deep-map"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Melanie Brown";
      maintainer = "brown.m@pm.me";
      author = "Melanie Brown";
      homepage = "https://github.com/cigsender/deep-map";
      url = "";
      synopsis = "Deeply-nested, multiple key type maps.";
      description = "Please see the README at https://github.com/cigsender/deep-map";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          ];
        buildable = true;
        };
      tests = {
        "test-readme" = {
          depends = [
            (hsPkgs."deep-map" or (errorHandler.buildDepError "deep-map"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
            ];
          buildable = true;
          };
        };
      };
    }