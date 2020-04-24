{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "phone-metadata"; version = "0.0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "raghu.ugare@gmail.com,\nvijay.hassan@gmail.com";
      author = "Raghu Ugare <raghu.ugare@gmail.com>,\nVijay Anant <vijay.hassan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Phonenumber Metadata based on Google's libphonenumber";
      description = "Phonenumber Metadata based on Google's libphonenumber";
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
      };
    }