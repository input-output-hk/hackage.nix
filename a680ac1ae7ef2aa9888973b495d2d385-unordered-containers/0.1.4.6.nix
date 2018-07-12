{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "unordered-containers";
          version = "0.1.4.6";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daan Leijen 2002\n(c) Andriy Palamarchuk 2008\n(c) 2010-2011 Johan Tibell";
        maintainer = "johan.tibell@gmail.com";
        author = "Johan Tibell <johan.tibell@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Efficient hashing-based container types";
        description = "Efficient hashing-based container types.  The containers have been\noptimized for performance critical use, both in terms of large data\nquantities and high speed.\n\nThe declared cost of each operation is either worst-case or\namortized, but remains valid even if structures are shared.";
        buildType = "Simple";
      };
      components = {
        "unordered-containers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hashable
          ];
        };
        tests = {
          "map-properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hashable
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.unordered-containers
            ];
          };
          "set-properties" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }