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
      identifier = { name = "tasty"; version = "0.8.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "http://documentup.com/feuerbach/tasty";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "See <http://documentup.com/feuerbach/tasty>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.6") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }