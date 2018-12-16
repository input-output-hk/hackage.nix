{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "btree";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/b-plus-tree#readme";
      url = "";
      synopsis = "B-Tree on the compact heap";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.prim-array)
          (hsPkgs.compact-mutable)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.btree)
            (hsPkgs.prim-array)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.smallcheck)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.primitive)
            (hsPkgs.compact-mutable)
            (hsPkgs.hashable)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.btree)
            (hsPkgs.clock)
            (hsPkgs.hashable)
            (hsPkgs.ghc-prim)
            (hsPkgs.compact-mutable)
          ];
        };
      };
    };
  }