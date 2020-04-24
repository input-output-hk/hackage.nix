{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "cubicbezier"; version = "0.1.0"; };
      license = "GPL-2.0-only";
      copyright = "Kristof Bastiaensen (2013)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Efficient manipulating of 2D cubic bezier curves.";
      description = "This library supports efficient manipulating of 2D cubic bezier curves.  The original goal\nis to support typography, but it is useful for general graphics.  Supported features are:\n\nEvaluating bezier curves and derivatives, affine transformations on bezier curves, arclength and inverse arclength, intersections between two curves, intersection between a curve and a line, curvature and radius of curvature, finding tangents parallel to a vector, finding inflection points and cusps.\n\nIt also supports polynomial root finding with Bernstein polynomials.\n\nThe module \"Geom2D.CubicBezier\" exports all the cubic bezier functions.  The module \"Geom2D\"\ncontains general 2D geometry functions and transformations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."integration" or ((hsPkgs.pkgs-errors).buildDepError "integration"))
          ];
        buildable = true;
        };
      };
    }