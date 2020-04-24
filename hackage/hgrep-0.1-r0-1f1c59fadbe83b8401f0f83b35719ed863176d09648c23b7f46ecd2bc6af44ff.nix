{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hgrep"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim@utf8.me";
      author = "Tim Humphries";
      homepage = "https://github.com/thumphries/hgrep";
      url = "";
      synopsis = "Search Haskell source code from the command line";
      description = "Search Haskell source code from the command line.\n\nPowered by <https://hackage.haskell.org/package/ghc-exactprint ghc-exactprint>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-exactprint" or ((hsPkgs.pkgs-errors).buildDepError "ghc-exactprint"))
          (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."pcre-heavy" or ((hsPkgs.pkgs-errors).buildDepError "pcre-heavy"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "hgrep" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hgrep" or ((hsPkgs.pkgs-errors).buildDepError "hgrep"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }