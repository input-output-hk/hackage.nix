{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "trasa";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Kyle McKean";
        maintainer = "mckean.kylej@gmail.com";
        author = "Kyle McKean";
        homepage = "https://github.com/haskell-trasa/trasa#readme";
        url = "";
        synopsis = "Type Safe Web Routing";
        description = "This library is a solution for http-based routing and dispatch. Its\ngoals are similar to the goals of `servant`, however, `trasa` relies\non very different mechanisms to accomplish those goals. All typeclasses\nin this library are optional. All of the real work is accomplished with GADTs,\nuniversal quantification, and plain old haskell data types.";
        buildType = "Simple";
      };
      components = {
        trasa = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.vinyl
            hsPkgs.hashable
            hsPkgs.http-types
            hsPkgs.http-media
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.trasa
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.vinyl
              hsPkgs.doctest
            ];
          };
        };
      };
    }