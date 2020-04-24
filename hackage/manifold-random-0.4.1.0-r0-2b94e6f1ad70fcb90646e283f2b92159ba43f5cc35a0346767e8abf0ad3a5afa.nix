{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "manifold-random"; version = "0.4.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "(@) sagemueller \$ geo.uni-koeln.de";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/manifolds";
      url = "";
      synopsis = "Sampling random points on general manifolds.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."manifolds" or ((hsPkgs.pkgs-errors).buildDepError "manifolds"))
          (hsPkgs."constrained-categories" or ((hsPkgs.pkgs-errors).buildDepError "constrained-categories"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."linearmap-category" or ((hsPkgs.pkgs-errors).buildDepError "linearmap-category"))
          ];
        buildable = true;
        };
      };
    }