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
      identifier = { name = "toolbox"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021-2023 Melanie Brown";
      maintainer = "brown.m@pm.me";
      author = "Melanie Brown";
      homepage = "https://github.com/mixphix/toolbox#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/mixphix/toolbox#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }