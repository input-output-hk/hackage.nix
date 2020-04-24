{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "text-containers"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2017 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "Memory-efficient string-indexed container types.";
      description = "This package provides memory-optimised implementations of string-indexed container types.\n\nThe API is aligned with the naming convention of the [containers](https://hackage.haskell.org/package/containers) package's API.\n\nThe following data-structures are provided:\n\n[\"Data.TextArray.Unboxed\"] Array of unboxed 'ShortText' strings.\n[\"Data.TextSet.Unboxed\"] Set of unboxed 'ShortText' strings.\n[\"Data.TextMap.Unboxed.Lazy\"] Associative map from unboxed 'ShortText' keys to non-strict values.\n\nWhere /unboxed ShortText/ refers to strings being stored in their UTF-8 representation without any alignment/padding back-to-back thereby providing good memory locality for index operations, avoiding pointer chasing, as well as increasing memory efficiency by reducing memory waste due to alignment.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "text-containers" = {
          depends = [
            (hsPkgs."text-containers" or ((hsPkgs.pkgs-errors).buildDepError "text-containers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }