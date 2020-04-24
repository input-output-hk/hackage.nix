{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "these-optics"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "C. McCann, Oleg Grenrus";
      homepage = "https://github.com/isomorphism/these";
      url = "";
      synopsis = "Optics for These";
      description = "This package provides Prism and Traversals for @These@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
          (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
          ];
        buildable = true;
        };
      };
    }