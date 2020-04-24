{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HPhone"; version = "0.0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "vijay.hassan@gmail.com,\nraghu.ugare@gmail.com";
      author = "Vijay Anant <vijay.hassan@gmail.com>,\nRaghu Ugare <raghu.ugare@gmail.com>";
      homepage = "https://github.com/vijayanant/HPhone";
      url = "";
      synopsis = "Phone number parser and validator";
      description = "Phone number parser and validator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."phone-metadata" or ((hsPkgs.pkgs-errors).buildDepError "phone-metadata"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HPhone" or ((hsPkgs.pkgs-errors).buildDepError "HPhone"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }