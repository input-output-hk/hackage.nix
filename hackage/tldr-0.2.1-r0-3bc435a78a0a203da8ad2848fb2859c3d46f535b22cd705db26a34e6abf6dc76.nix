{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tldr"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sibi";
      maintainer = "sibi@psibi.in";
      author = "Sibi";
      homepage = "https://github.com/psibi/tldr-hs#readme";
      url = "";
      synopsis = "Haskell tldr client";
      description = "Haskell tldr client with support for updating and viewing tldr pages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cmark" or ((hsPkgs.pkgs-errors).buildDepError "cmark"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "tldr" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tldr" or ((hsPkgs.pkgs-errors).buildDepError "tldr"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."shell-conduit" or ((hsPkgs.pkgs-errors).buildDepError "shell-conduit"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            ];
          buildable = true;
          };
        };
      tests = {
        "tldr-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tldr" or ((hsPkgs.pkgs-errors).buildDepError "tldr"))
            ];
          buildable = true;
          };
        };
      };
    }