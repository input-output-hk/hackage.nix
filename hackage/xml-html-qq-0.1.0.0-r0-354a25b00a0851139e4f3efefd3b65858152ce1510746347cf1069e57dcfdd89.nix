{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xml-html-qq"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/xml-html-qq";
      url = "";
      synopsis = "Quasi-quoters for XML and HTML Documents";
      description = "Please see <https://github.com/cdepillabout/xml-html-qq#readme README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."from-sum" or ((hsPkgs.pkgs-errors).buildDepError "from-sum"))
          (hsPkgs."heterocephalus" or ((hsPkgs.pkgs-errors).buildDepError "heterocephalus"))
          (hsPkgs."html-conduit" or ((hsPkgs.pkgs-errors).buildDepError "html-conduit"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or ((hsPkgs.pkgs-errors).buildDepError "th-lift-instances"))
          (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      tests = {
        "xml-html-qq-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        "xml-html-qq-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            (hsPkgs."xml-html-qq" or ((hsPkgs.pkgs-errors).buildDepError "xml-html-qq"))
            ];
          buildable = true;
          };
        };
      };
    }