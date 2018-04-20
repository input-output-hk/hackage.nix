{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vector-split";
          version = "1.0.0.2";
        };
        license = "MIT";
        copyright = "(c) Florian Hofmann 2016";
        maintainer = "fho@f12n.de";
        author = "Florian Hofmann";
        homepage = "https://github.com/fhaust/vector-split";
        url = "";
        synopsis = "Combinator library for splitting vectors.";
        description = "This package aims to be a vector-based drop-in replacement\nfor the list-based split package.\nFor more information see the haddocs or checkout the source\non github.";
        buildType = "Simple";
      };
      components = {
        vector-split = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        tests = {
          vector-split-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.vector
              hsPkgs.vector-split
              hsPkgs.split
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }