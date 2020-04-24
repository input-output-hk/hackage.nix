{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sc2hs"; version = "0.1.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "Sophie Taylor <sophie@spacekitteh.moe>";
      homepage = "https://gitlab.com/spacekitteh/sc2hs";
      url = "";
      synopsis = "An interface to the Starcraft II bot API";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."etc" or ((hsPkgs.pkgs-errors).buildDepError "etc"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
          (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."lens-labels" or ((hsPkgs.pkgs-errors).buildDepError "lens-labels"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."sc2-lowlevel" or ((hsPkgs.pkgs-errors).buildDepError "sc2-lowlevel"))
          (hsPkgs."sc2-proto" or ((hsPkgs.pkgs-errors).buildDepError "sc2-proto"))
          (hsPkgs."sc2-support" or ((hsPkgs.pkgs-errors).buildDepError "sc2-support"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "sc2hs-demo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."etc" or ((hsPkgs.pkgs-errors).buildDepError "etc"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."freer-simple" or ((hsPkgs.pkgs-errors).buildDepError "freer-simple"))
            (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."lens-labels" or ((hsPkgs.pkgs-errors).buildDepError "lens-labels"))
            (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
            (hsPkgs."sc2-lowlevel" or ((hsPkgs.pkgs-errors).buildDepError "sc2-lowlevel"))
            (hsPkgs."sc2-proto" or ((hsPkgs.pkgs-errors).buildDepError "sc2-proto"))
            (hsPkgs."sc2-support" or ((hsPkgs.pkgs-errors).buildDepError "sc2-support"))
            (hsPkgs."sc2hs" or ((hsPkgs.pkgs-errors).buildDepError "sc2hs"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }