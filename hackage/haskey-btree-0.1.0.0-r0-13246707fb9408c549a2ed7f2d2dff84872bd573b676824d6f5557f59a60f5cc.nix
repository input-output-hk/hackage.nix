{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskey-btree"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017, Henri Verroken, Steven Keuchel";
      maintainer = "steven.keuchel@gmail.com";
      author = "Henri Verroken, Steven Keuchel";
      homepage = "https://github.com/haskell-haskey/haskey-btree";
      url = "";
      synopsis = "B+-tree implementation in Haskell.";
      description = "This package provides two B+-tree implementations. The first one is a pure\nB+-tree of a specific order, while the second one is an impure one backed\nby a page allocator.\n\nFor more information on how to use this package, visit\n<https://github.com/haskell-haskey/haskey-btree>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.focus)
          (hsPkgs.hashable)
          (hsPkgs.list-t)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "haskey-btree-properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-ordlist)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.haskey-btree)
            ];
          };
        "haskey-btree-integration" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.haskey-btree)
            ];
          };
        };
      };
    }