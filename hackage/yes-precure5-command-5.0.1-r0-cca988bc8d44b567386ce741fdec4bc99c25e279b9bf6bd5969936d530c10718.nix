{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "yes-precure5-command"; version = "5.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "YAMAMOTO Yuji <whosekiteneverfly@gmail.com>";
      author = "YAMAMOTO Yuji";
      homepage = "https://github.com/igrep/yes-precure5-command/";
      url = "";
      synopsis = "Extended yes command to reproduce phrases in Yes! Precure 5";
      description = "Provides extended yes command to reproduce phrases in Yes! Precure 5.\n\nSee <https://github.com/igrep/yes-precure5-command/blob/master/README.mkd> for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "yes" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."yes-precure5-command" or ((hsPkgs.pkgs-errors).buildDepError "yes-precure5-command"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."yes-precure5-command" or ((hsPkgs.pkgs-errors).buildDepError "yes-precure5-command"))
            ];
          buildable = true;
          };
        };
      };
    }