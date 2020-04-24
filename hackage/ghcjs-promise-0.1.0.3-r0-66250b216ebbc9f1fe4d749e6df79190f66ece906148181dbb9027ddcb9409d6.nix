{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghcjs-promise"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "vwwv@correo.ugr.es";
      author = "Alejandro Durán Pallarés";
      homepage = "https://github.com/vwwv/ghcjs-promise";
      url = "";
      synopsis = "Bidirectional bidings to javascript's promise.";
      description = "Bidirectional bidings to javascript's promise.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          ];
        buildable = true;
        };
      };
    }