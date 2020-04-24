{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "phone-metadata"; version = "0.0.1.5"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "raghu.ugare@gmail.com,\nvijay.hassan@gmail.com";
      author = "Raghu Ugare <raghu.ugare@gmail.com>,\nVijay Anant <vijay.hassan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phonenumber Metadata - NOTE: this is now deprecated!";
      description = "Phonenumber Metadata - NOTE: this is now deprecated!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."phone-metadata" or ((hsPkgs.pkgs-errors).buildDepError "phone-metadata"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }