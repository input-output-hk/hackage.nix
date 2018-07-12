{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "simple-vec3";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<dima@dzhus.org>";
        author = "Dmitry Dzhus";
        homepage = "http://github.com/dzhus/simple-vec3/";
        url = "";
        synopsis = "Three-dimensional vectors of doubles with basic operations";
        description = "A class of 3-vectors with a set of basic methods for\ngeometry operations on vectors and an associated\nmatrix type. Several instances are provided for\nuse with \"Data.Vector.Unboxed\" and\n\"Data.Vector.Storable\" as container types.";
        buildType = "Simple";
      };
      components = {
        "simple-vec3" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
          ];
        };
        benchmarks = {
          "simple-vec3-benchmark" = {
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