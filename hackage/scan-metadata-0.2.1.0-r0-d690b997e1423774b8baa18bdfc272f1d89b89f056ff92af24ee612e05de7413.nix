{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "scan-metadata"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alexey.raga@gmail.com";
      author = "alexeyraga";
      homepage = "";
      url = "";
      synopsis = "Metadata types for Albedo Scanners";
      description = "Metadata types for Albedo Scanners.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."antiope-core" or ((hsPkgs.pkgs-errors).buildDepError "antiope-core"))
          (hsPkgs."antiope-s3" or ((hsPkgs.pkgs-errors).buildDepError "antiope-s3"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
          (hsPkgs."hw-aeson" or ((hsPkgs.pkgs-errors).buildDepError "hw-aeson"))
          (hsPkgs."hw-ip" or ((hsPkgs.pkgs-errors).buildDepError "hw-ip"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."thyme" or ((hsPkgs.pkgs-errors).buildDepError "thyme"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      };
    }