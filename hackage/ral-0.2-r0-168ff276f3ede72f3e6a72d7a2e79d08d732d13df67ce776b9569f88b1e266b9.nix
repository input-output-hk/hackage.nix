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
    flags = { adjunctions = true; distributive = true; semigroupoids = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ral"; version = "0.2"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2019-2021 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/vec";
      url = "";
      synopsis = "Random access lists";
      description = "This package provides ordinary random access list, 'RAList', and also\na length indexed variant, 'RAVec'.\n\nThe data structure allows fast cons-operation (like ordinary list) but also fast random access (like non-functional arrays).\n\nFor @lens@ or @optics@ support see [ral-lens](https://hackage.haskell.org/package/ral-lens) and [ral-optics](https://hackage.haskell.org/package/ral-optics) packages respectively.\n\n=== Similar packages\n\nThis packages don't provide length-indexed variant, and their 'RAList' has\nopaque structure.\n\n* https://hackage.haskell.org/package/ralist\n* https://hackage.haskell.org/package/random-access-list";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bin" or (errorHandler.buildDepError "bin"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.distributive) ([
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          ] ++ (pkgs.lib).optional (flags.adjunctions) (hsPkgs."adjunctions" or (errorHandler.buildDepError "adjunctions")))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"));
        buildable = true;
        };
      benchmarks = {
        "ral-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ral" or (errorHandler.buildDepError "ral"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }