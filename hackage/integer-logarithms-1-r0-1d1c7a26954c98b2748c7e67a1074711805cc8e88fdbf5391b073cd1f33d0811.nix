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
    flags = { check-bounds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "integer-logarithms"; version = "1"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Daniel Fischer";
      homepage = "https://github.com/phadej/integer-logarithms";
      url = "";
      synopsis = "Integer logarithms.";
      description = "\"Math.NumberTheory.Logarithms\" and \"Math.NumberTheory.Powers.Integer\"\nfrom the arithmoi package.\n\nAlso provides \"GHC.Integer.Logarithms.Compat\" and\n\"Math.NumberTheory.Power.Natural\" modules, as well as some\nadditional functions in migrated modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."nats" or (errorHandler.buildDepError "nats"));
          buildable = true;
          };
        };
      };
    }