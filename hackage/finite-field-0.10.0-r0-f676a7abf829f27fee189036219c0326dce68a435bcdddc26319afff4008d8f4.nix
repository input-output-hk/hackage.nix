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
    flags = { useghctypelits = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "finite-field"; version = "0.10.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Finite Fields";
      description = "This is an implementation of finite fields.\nCurrently only prime fields are supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ] ++ (if flags.useghctypelits
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            ]
          else [
            (hsPkgs."type-level-numbers" or (errorHandler.buildDepError "type-level-numbers"))
            ]);
        buildable = true;
        };
      tests = {
        "TestPrimeField" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
            (hsPkgs."primes" or (errorHandler.buildDepError "primes"))
            ] ++ (if flags.useghctypelits
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
              ]
            else [
              (hsPkgs."type-level-numbers" or (errorHandler.buildDepError "type-level-numbers"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.7") (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
          buildable = true;
          };
        };
      };
    }