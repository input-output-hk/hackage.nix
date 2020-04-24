{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { adjunctions = true; distributive = true; semigroupoids = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ral"; version = "0.1"; };
      license = "GPL-2.0-or-later";
      copyright = "(c) 2019 Oleg Grenrus";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."bin" or ((hsPkgs.pkgs-errors).buildDepError "bin"))
          (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))) ++ (pkgs.lib).optionals (flags.distributive) ([
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          ] ++ (pkgs.lib).optional (flags.adjunctions) (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions")))) ++ (pkgs.lib).optional (flags.semigroupoids) (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"));
        buildable = true;
        };
      benchmarks = {
        "ral-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."ral" or ((hsPkgs.pkgs-errors).buildDepError "ral"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }