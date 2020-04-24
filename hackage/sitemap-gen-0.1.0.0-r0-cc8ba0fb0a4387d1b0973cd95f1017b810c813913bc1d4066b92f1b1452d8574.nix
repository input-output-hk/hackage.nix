{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sitemap-gen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/sitemap-gen#readme";
      url = "";
      synopsis = "Generate XML Sitemaps & Sitemap Indexes";
      description = "The @sitemap-gen@ package uses the @xmlgen@ package to generate XML\nsitemaps that are compliant with the sitemaps.org XML schema.\n\nSee the \"Web.Sitemap.Gen\" module and the\n<https://github.com/prikhi/sitemap-gen/blob/master/README.md README> file\nfor documentation & usage details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."xmlgen" or ((hsPkgs.pkgs-errors).buildDepError "xmlgen"))
          ];
        buildable = true;
        };
      tests = {
        "sitemap-gen-tests" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."raw-strings-qq" or ((hsPkgs.pkgs-errors).buildDepError "raw-strings-qq"))
            (hsPkgs."sitemap-gen" or ((hsPkgs.pkgs-errors).buildDepError "sitemap-gen"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }