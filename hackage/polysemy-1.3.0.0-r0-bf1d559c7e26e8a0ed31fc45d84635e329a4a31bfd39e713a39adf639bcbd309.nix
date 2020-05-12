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
    flags = { dump-core = false; error-messages = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "polysemy"; version = "1.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Sandy Maguire";
      maintainer = "sandy@sandymaguire.me";
      author = "Sandy Maguire";
      homepage = "https://github.com/isovector/polysemy#readme";
      url = "";
      synopsis = "Higher-order, low-boilerplate, zero-cost free monads.";
      description = "Please see the README on GitHub at <https://github.com/isovector/polysemy#readme>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."type-errors" or (errorHandler.buildDepError "type-errors"))
          (hsPkgs."type-errors-pretty" or (errorHandler.buildDepError "type-errors-pretty"))
          (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs."dump-core" or (errorHandler.buildDepError "dump-core"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2.2") (hsPkgs."unsupported-ghc-version" or (errorHandler.buildDepError "unsupported-ghc-version"));
        buildable = true;
        };
      tests = {
        "polysemy-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-errors" or (errorHandler.buildDepError "type-errors"))
            (hsPkgs."type-errors-pretty" or (errorHandler.buildDepError "type-errors-pretty"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "polysemy-bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."freer-simple" or (errorHandler.buildDepError "freer-simple"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."type-errors" or (errorHandler.buildDepError "type-errors"))
            (hsPkgs."type-errors-pretty" or (errorHandler.buildDepError "type-errors-pretty"))
            (hsPkgs."unagi-chan" or (errorHandler.buildDepError "unagi-chan"))
            ];
          buildable = true;
          };
        };
      };
    }