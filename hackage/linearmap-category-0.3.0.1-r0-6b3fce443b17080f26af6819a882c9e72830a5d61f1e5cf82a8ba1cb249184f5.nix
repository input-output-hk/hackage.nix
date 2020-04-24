{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "linearmap-category"; version = "0.3.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/linearmap-family";
      url = "";
      synopsis = "Native, complete, matrix-free linear algebra.";
      description = "The term /numerical linear algebra/ is often used almost\nsynonymous with /matrix modifications/. However, what's interesting\nfor most applications are really just /points in some vector space/\nand linear mappings between them, not matrices (which represent\npoints or mappings, but inherently depend on a particular choice\nof basis / coordinate system).\n\nThis library implements the crucial LA operations like solving\nlinear equations and eigenvalue problems, without requiring\nthat the vectors are represented in some particular basis. Apart\nfrom conceptual elegance (only operations that are actually\ngeometrically sensible will typecheck – this is far stronger than\njust confirming that the dimensions match, as some other libraries\ndo), this also opens up good optimisation possibilities: the\nvectors can be unboxed, use dedicated sparse compression, possibly\ncarry out the computations on accelerated hardware (GPU etc.).\nThe spaces can even be infinite-dimensional (e.g. function spaces).\n\nThe linear algebra algorithms in this package only require the\nvectors to support fundamental operations like addition, scalar\nproducts, double-dual-space coercion and tensor products; none of\nthis requires a basis representation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."constrained-categories" or ((hsPkgs.pkgs-errors).buildDepError "constrained-categories"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."free-vector-spaces" or ((hsPkgs.pkgs-errors).buildDepError "free-vector-spaces"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."manifolds-core" or ((hsPkgs.pkgs-errors).buildDepError "manifolds-core"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."ieee754" or ((hsPkgs.pkgs-errors).buildDepError "ieee754"))
          ];
        buildable = true;
        };
      };
    }