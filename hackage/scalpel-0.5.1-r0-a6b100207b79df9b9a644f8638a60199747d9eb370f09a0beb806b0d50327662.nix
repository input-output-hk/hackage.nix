{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scalpel"; version = "0.5.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "willcoster@gmail.com";
      author = "Will Coster";
      homepage = "https://github.com/fimad/scalpel";
      url = "";
      synopsis = "A high level web scraping library for Haskell.";
      description = "Scalpel is a web scraping library inspired by libraries like Parsec and\nPerl's Web::Scraper Scalpel builds on top of TagSoup to provide a\ndeclarative and monadic interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."scalpel-core" or ((hsPkgs.pkgs-errors).buildDepError "scalpel-core"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }