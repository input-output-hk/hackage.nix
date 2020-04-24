{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Baggins"; version = "1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "pierre-etienne.meunier@lif.univ-mrs.fr";
      author = "Pierre-Etienne Meunier";
      homepage = "http://pageperso.lif.univ-mrs.fr/~pierre-etienne.meunier/Baggins";
      url = "";
      synopsis = "Tools for self-assembly";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cairo" or ((hsPkgs.pkgs-errors).buildDepError "cairo"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }