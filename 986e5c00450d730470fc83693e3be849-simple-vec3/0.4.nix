{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-vec3";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dima@dzhus.org";
        author = "Dmitry Dzhus";
        homepage = "https://github.com/dzhus/simple-vec3#readme";
        url = "";
        synopsis = "Three-dimensional vectors of doubles with basic operations";
        description = "Simple three-dimensional vectors of doubles with basic vector and matrix operations, supporting \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\".";
        buildType = "Simple";
      };
      components = {
        simple-vec3 = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        tests = {
          simple-vec3-doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.doctest-discover
            ];
          };
          simple-vec3-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.simple-vec3
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
            ];
          };
        };
        benchmarks = {
          simple-vec3-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.simple-vec3
              hsPkgs.vector
            ];
          };
        };
      };
    }