{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "cubicbezier"; version = "0.4.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen (2014)";
      maintainer = "Kristof Bastiaensen";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Efficient manipulating of 2D cubic bezier curves.";
      description = "This library supports efficient manipulating of 2D cubic bezier curves, for use in graphics or typography.  Supported features are:\n\nEvaluating bezier curves and derivatives, affine transformations on bezier curves, arclength and inverse arclength, intersections between two curves, intersection between a curve and a line, curvature and radius of curvature, finding tangents parallel to a vector, finding inflection points and cusps.\n\nIt also supports polynomial root finding with Bernstein polynomials.\n\nThe module \"Geom2D.CubicBezier\" exports all the cubic bezier functions.  The module \"Geom2D\"\ncontains general 2D geometry functions and transformations.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."integration" or ((hsPkgs.pkgs-errors).buildDepError "integration"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."matrices" or ((hsPkgs.pkgs-errors).buildDepError "matrices"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
          (hsPkgs."microlens-mtl" or ((hsPkgs.pkgs-errors).buildDepError "microlens-mtl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."cubicbezier" or ((hsPkgs.pkgs-errors).buildDepError "cubicbezier"))
            ];
          buildable = true;
          };
        };
      };
    }