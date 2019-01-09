{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "btree"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/btree";
      url = "";
      synopsis = "B-Tree on Unmanaged Heap";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) (hsPkgs.primitive) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.btree)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.smallcheck)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.primitive)
            (hsPkgs.hashable)
            (hsPkgs.MonadRandom)
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
            ];
          };
        };
      };
    }