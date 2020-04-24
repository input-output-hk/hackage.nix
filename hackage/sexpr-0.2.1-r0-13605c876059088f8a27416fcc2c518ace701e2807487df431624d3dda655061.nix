{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testing = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "sexpr"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bts@evenmere.org";
      author = "Brian Sniffen";
      homepage = "";
      url = "";
      synopsis = "S-expression printer and parser";
      description = "Parser and printer for S-expressions, including Ron\nRivest's Canonical S-expressions.  These are used in\nSDSI and SPKI, and are generally useful for\ncryptographic operations over structured data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      exes = {
        "sexpr-test" = {
          depends = [
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if !flags.testing then false else true;
          };
        };
      };
    }