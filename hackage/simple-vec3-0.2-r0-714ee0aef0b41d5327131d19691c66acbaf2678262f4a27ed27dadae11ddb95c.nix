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
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dima@dzhus.org>";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/simple-vec3#readme";
      url = "";
      synopsis = "Three-dimensional vectors of doubles with basic operations";
      description = "A class of 3-vectors with a set of basic methods for geometry operations on vectors and an associated matrix type. Instances are provided for use with \"Data.Vector.Unboxed\" and \"Data.Vector.Storable\" as container types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "pythia-recommender-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.simple-vec3)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
      };
      benchmarks = {
        "simple-vec3-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.vector-th-unbox)
            (hsPkgs.criterion)
            (hsPkgs.simple-vec3)
          ];
        };
      };
    };
  }