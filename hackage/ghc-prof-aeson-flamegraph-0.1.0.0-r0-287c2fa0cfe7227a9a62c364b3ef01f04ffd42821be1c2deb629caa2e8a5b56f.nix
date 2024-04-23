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
      identifier = { name = "ghc-prof-aeson-flamegraph"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018, Mateusz Kowalczyk";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/ghc-prof-aeson-flamegraph#readme";
      url = "";
      synopsis = "Turn GHC `-pj` profiling output into FlameGraph format.";
      description = "Please see the README on Github at <https://github.com/Fuuzetsu/ghc-prof-aeson-flamegraph#readme>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ghc-prof-aeson-flamegraph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-prof-aeson" or (errorHandler.buildDepError "ghc-prof-aeson"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }