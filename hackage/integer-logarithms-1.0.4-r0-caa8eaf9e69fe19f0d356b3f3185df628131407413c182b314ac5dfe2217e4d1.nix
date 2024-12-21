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
    flags = { integer-gmp = true; check-bounds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "integer-logarithms"; version = "1.0.4"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer, 2017-2020 Oleg Grenrus, Andrew Lelechenko";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Daniel Fischer";
      homepage = "https://github.com/haskellari/integer-logarithms";
      url = "";
      synopsis = "Integer logarithms.";
      description = "\"Math.NumberTheory.Logarithms\" and \"Math.NumberTheory.Powers.Integer\"\nfrom the arithmoi package.\n\nAlso provides \"GHC.Integer.Logarithms.Compat\" and\n\"Math.NumberTheory.Power.Natural\" modules, as well as some\nadditional functions in migrated modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"))) ++ (if compiler.isGhc && compiler.version.ge "9.0"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          ] ++ pkgs.lib.optional (!flags.integer-gmp) (hsPkgs."invalid-cabal-flag-settings" or (errorHandler.buildDepError "invalid-cabal-flag-settings"))
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ] ++ (if flags.integer-gmp
            then [
              (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            ]
            else [
              (hsPkgs."integer-simple" or (errorHandler.buildDepError "integer-simple"))
            ]));
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
          ];
          buildable = true;
        };
      };
    };
  }