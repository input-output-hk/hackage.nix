{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "constructive-algebra"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mortberg@student.chalmers.se";
      author = "Anders Mortberg, Bassel Mannaa";
      homepage = "";
      url = "";
      synopsis = "A library for constructive algebra.";
      description = "A library for constructive algebra.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }