{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "trasa-form"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "generate forms using lucid, ditto and trasa";
      description = "Formlets library for trasa using ditto as its backend.\nAlthough trasa already has machinery for creating\ntypesafe forms, this library with ditto allow a more\ncomposable approach to form generation/validation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-api-data" or ((hsPkgs.pkgs-errors).buildDepError "http-api-data"))
          (hsPkgs."cookie" or ((hsPkgs.pkgs-errors).buildDepError "cookie"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."quantification" or ((hsPkgs.pkgs-errors).buildDepError "quantification"))
          (hsPkgs."ditto" or ((hsPkgs.pkgs-errors).buildDepError "ditto"))
          (hsPkgs."ditto-lucid" or ((hsPkgs.pkgs-errors).buildDepError "ditto-lucid"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."trasa" or ((hsPkgs.pkgs-errors).buildDepError "trasa"))
          (hsPkgs."trasa-server" or ((hsPkgs.pkgs-errors).buildDepError "trasa-server"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "test-server" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
            (hsPkgs."quantification" or ((hsPkgs.pkgs-errors).buildDepError "quantification"))
            (hsPkgs."ditto" or ((hsPkgs.pkgs-errors).buildDepError "ditto"))
            (hsPkgs."ditto-lucid" or ((hsPkgs.pkgs-errors).buildDepError "ditto-lucid"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."trasa" or ((hsPkgs.pkgs-errors).buildDepError "trasa"))
            (hsPkgs."trasa-extra" or ((hsPkgs.pkgs-errors).buildDepError "trasa-extra"))
            (hsPkgs."trasa-form" or ((hsPkgs.pkgs-errors).buildDepError "trasa-form"))
            (hsPkgs."trasa-server" or ((hsPkgs.pkgs-errors).buildDepError "trasa-server"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }