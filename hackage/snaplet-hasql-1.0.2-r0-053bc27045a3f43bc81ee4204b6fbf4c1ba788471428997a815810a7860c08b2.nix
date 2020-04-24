{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snaplet-hasql"; version = "1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/snaplet-hasql";
      url = "";
      synopsis = "A Hasql snaplet";
      description = "A hasql snaplet, including an auth backend.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
          (hsPkgs."hasql-backend" or ((hsPkgs.pkgs-errors).buildDepError "hasql-backend"))
          (hsPkgs."clientsession" or ((hsPkgs.pkgs-errors).buildDepError "clientsession"))
          (hsPkgs."configurator" or ((hsPkgs.pkgs-errors).buildDepError "configurator"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."snap" or ((hsPkgs.pkgs-errors).buildDepError "snap"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          ];
        buildable = true;
        };
      };
    }