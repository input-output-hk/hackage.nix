{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "2.0";
      identifier = {
        name = "text-containers";
        version = "0.1.0.0";
      };
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
      "text-containers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.text-short)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "text-containers" = {
          depends  = [
            (hsPkgs.text-containers)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text-short)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }