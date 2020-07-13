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
      identifier = { name = "protocol"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 Evgeny Poberezkin";
      maintainer = "evgeny@poberezkin.com";
      author = "Evgeny Poberezkin";
      homepage = "https://github.com/epoberezkin/protocol#readme";
      url = "";
      synopsis = "Model distributed system as type-level multi-party protocol";
      description = "This package provides type to model distributed multi-party protocols,\nensuring the continuity of the associated resource state transitions on the type level\nfor all protocol commands and scenarios.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."freer-indexed" or (errorHandler.buildDepError "freer-indexed"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
        buildable = true;
        };
      };
    }