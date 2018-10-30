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
        name = "simple-vec3";
        version = "0.3";
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
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "simple-vec3-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.simple-vec3)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
          ];
        };
      };
      benchmarks = {
        "simple-vec3-benchmark" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.simple-vec3)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
          ];
        };
      };
    };
  }