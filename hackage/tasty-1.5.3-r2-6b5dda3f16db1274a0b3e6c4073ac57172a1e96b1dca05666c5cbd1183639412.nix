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
    flags = { unix = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty"; version = "1.5.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "https://github.com/UnkindPartition/tasty";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "Tasty is a modern testing framework for Haskell.\nIt lets you combine your unit tests, golden\ntests, QuickCheck/SmallCheck properties, and any\nother types of tests into a single test suite.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
        ] ++ pkgs.lib.optional (!system.isX86_64 && !system.isAarch64 && !system.isPpc64 && !system.isS390x && !system.isRiscv64) (hsPkgs."unbounded-delays" or (errorHandler.buildDepError "unbounded-delays"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.4")) (hsPkgs."time" or (errorHandler.buildDepError "time"))) ++ pkgs.lib.optionals (!system.isWindows && !(compiler.isGhcjs && true)) (pkgs.lib.optional (flags.unix) (hsPkgs."unix" or (errorHandler.buildDepError "unix")));
        buildable = true;
      };
    };
  }