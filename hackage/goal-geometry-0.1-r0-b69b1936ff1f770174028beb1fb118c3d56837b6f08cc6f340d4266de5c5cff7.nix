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
        name = "goal-geometry";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Scientific computing on geometric objects";
      description = "This library provides all the types and classes essential for\ndefining manifolds. This includes definitions and algorithms for sets,\npoints, linear and multilinear algebra, function spaces, basic differential\ngeometry, and convex analysis.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.goal-core)
          (hsPkgs.vector)
          (hsPkgs.hmatrix)
        ];
      };
      exes = {
        "coordinates" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
          ];
        };
        "gradient-descent" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
            (hsPkgs.goal-geometry)
          ];
        };
      };
    };
  }