{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      triples = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "csg";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/csg#readme";
      url = "";
      synopsis = "Analytical CSG (Constructive Solid Geometry) library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "csg" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.simple-vec3)
          (hsPkgs.strict)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "csg-raycaster" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.csg)
            (hsPkgs.gloss)
            (hsPkgs.gloss-raster)
            (hsPkgs.simple-vec3)
            (hsPkgs.strict)
            (hsPkgs.system-filepath)
            (hsPkgs.turtle)
          ];
        };
      };
      tests = {
        "csg-doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-driver-gen)
            (hsPkgs.simple-vec3)
          ];
        };
        "csg-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.csg)
            (hsPkgs.simple-vec3)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "csg-benchmark" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.csg)
            (hsPkgs.simple-vec3)
            (hsPkgs.strict)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }