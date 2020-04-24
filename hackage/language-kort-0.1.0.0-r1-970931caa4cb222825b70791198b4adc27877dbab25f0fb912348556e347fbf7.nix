{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-kort"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/language-kort/";
      url = "";
      synopsis = "Parser and serializer for the Kort information language.";
      description = "This package provides a library containing all the\nnecessary tools for working with Kort files, allowing\nprograms to load and save semantic data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."razom-text-util" or ((hsPkgs.pkgs-errors).buildDepError "razom-text-util"))
          (hsPkgs."regex-applicative" or ((hsPkgs.pkgs-errors).buildDepError "regex-applicative"))
          (hsPkgs."smaoin" or ((hsPkgs.pkgs-errors).buildDepError "smaoin"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-position" or ((hsPkgs.pkgs-errors).buildDepError "text-position"))
          (hsPkgs."vocabulary-kadma" or ((hsPkgs.pkgs-errors).buildDepError "vocabulary-kadma"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."language-kort" or ((hsPkgs.pkgs-errors).buildDepError "language-kort"))
            (hsPkgs."smaoin" or ((hsPkgs.pkgs-errors).buildDepError "smaoin"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vocabulary-kadma" or ((hsPkgs.pkgs-errors).buildDepError "vocabulary-kadma"))
            ];
          buildable = true;
          };
        };
      };
    }