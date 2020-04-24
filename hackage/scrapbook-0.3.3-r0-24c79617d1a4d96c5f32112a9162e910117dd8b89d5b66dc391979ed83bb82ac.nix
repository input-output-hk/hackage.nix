{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "scrapbook"; version = "0.3.3"; };
      license = "MIT";
      copyright = "2018 MATSUBARA Nobutada";
      maintainer = "MATSUBARA Nobutada";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/scrapbook#readme";
      url = "";
      synopsis = "Automatically derive Kotlin class to query servant webservices";
      description = "Please see the README on Github at <https://github.com/matsubara0507/scrapbook#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."extensible" or ((hsPkgs.pkgs-errors).buildDepError "extensible"))
          (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
          (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
          (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "scrapbook" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."drinkery" or ((hsPkgs.pkgs-errors).buildDepError "drinkery"))
            (hsPkgs."extensible" or ((hsPkgs.pkgs-errors).buildDepError "extensible"))
            (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
            (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
            (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."scrapbook" or ((hsPkgs.pkgs-errors).buildDepError "scrapbook"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      tests = {
        "scrapbook-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."extensible" or ((hsPkgs.pkgs-errors).buildDepError "extensible"))
            (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
            (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."scrapbook" or ((hsPkgs.pkgs-errors).buildDepError "scrapbook"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }