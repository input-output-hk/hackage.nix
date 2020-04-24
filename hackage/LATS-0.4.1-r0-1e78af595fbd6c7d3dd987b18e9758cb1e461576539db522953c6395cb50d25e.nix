{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "LATS"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2016 guaraqe";
      maintainer = "guaraqe@openmailbox.org";
      author = "guaraqe";
      homepage = "http://github.com/guaraqe/lats#readme";
      url = "";
      synopsis = "Linear Algebra on Typed Spaces";
      description = "Please see README.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."constraint-classes" or ((hsPkgs.pkgs-errors).buildDepError "constraint-classes"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }