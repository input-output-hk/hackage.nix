{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "cubicbezier";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen (2014)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Efficient manipulating of 2D cubic bezier curves.";
      description = "This library supports efficient manipulating of 2D cubic bezier curves.  The original goal\nis to support typography, but it is useful for general graphics.  Supported features are:\n\nEvaluating bezier curves and derivatives, affine transformations on bezier curves, arclength and inverse arclength, intersections between two curves, intersection between a curve and a line, curvature and radius of curvature, finding tangents parallel to a vector, finding inflection points and cusps.\n\nIt also supports polynomial root finding with Bernstein polynomials.\n\nThe module \"Geom2D.CubicBezier\" exports all the cubic bezier functions.  The module \"Geom2D\"\ncontains general 2D geometry functions and transformations.";
      buildType = "Simple";
    };
    components = {
      "cubicbezier" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.integration)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.parsec)
            (hsPkgs.cubicbezier)
          ];
        };
      };
    };
  }