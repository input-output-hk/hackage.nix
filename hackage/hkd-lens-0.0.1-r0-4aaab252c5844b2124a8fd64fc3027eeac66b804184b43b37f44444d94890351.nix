{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "hkd-lens"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Trevor Cook";
      maintainer = "trevor.j.cook@gmail.com";
      author = "Trevor Cook";
      homepage = "https://github.com/trevorcook/hkd-lens";
      url = "";
      synopsis = "Generic lens/prism/traversal-kinded data.";
      description = "This library uses GHC Generics to generate lenses, prisms, and\ntraversals for higher-kinded data types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      };
    }