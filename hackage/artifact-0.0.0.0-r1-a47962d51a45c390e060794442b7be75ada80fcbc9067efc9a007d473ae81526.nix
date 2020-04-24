{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "artifact"; version = "0.0.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2018 Leif Metcalf";
      maintainer = "Leif Metcalf <me@leif.nz>";
      author = "Leif Metcalf";
      homepage = "https://gitlab.com/leifmetcalf/artifact#readme";
      url = "";
      synopsis = "Basic types and instances for Valve's Artifact Card-set API";
      description = "See README at <https://gitlab.com/leifmetcalf/artifact#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }