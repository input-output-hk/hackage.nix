{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "DistanceTransform";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Anthony Cowley 2012,2013";
        maintainer = "acowley@gmail.com";
        author = "Anthony Cowley";
        homepage = "";
        url = "";
        synopsis = "Distance transform function.";
        description = "An n-D distance transform that computes the Euclidean\ndistance between each element in a discrete field and the nearest cell\ncontaining a zero.\n\nThe algorithm implemented is based off of\nMeijster et al., /\"A general algorithm for computing distance/\n/transforms in linear time.\"/ Parallel versions of both the Euclidean\ndistance transform and squared Euclidean distance transform are also\nprovided.";
        buildType = "Simple";
      };
      components = {
        "DistanceTransform" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.primitive
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.vector
              hsPkgs.DistanceTransform
            ];
          };
        };
      };
    }