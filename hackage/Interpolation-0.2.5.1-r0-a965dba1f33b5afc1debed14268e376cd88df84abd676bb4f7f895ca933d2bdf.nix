{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "Interpolation"; version = "0.2.5.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "aleator@gmail.com";
      author = "Ville Tirronen";
      homepage = "";
      url = "";
      synopsis = "Multiline strings, interpolation and templating.";
      description = "This package adds quasiquoter for multiline\nstrings, interpolation and simple templating.\nIt can handle repetition templates which makes it\nHandy for outputting larger structures, such as\nlatex tables or gnuplot files.\n0.2.5.1 -- version bump for ghc-7.0.1";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }