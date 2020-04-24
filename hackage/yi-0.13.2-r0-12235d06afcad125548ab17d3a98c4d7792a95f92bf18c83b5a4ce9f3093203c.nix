{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { emacs = true; pango = true; vim = true; vty = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "yi"; version = "0.13.2"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Yi editor";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "yi" = {
          depends = ((([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."yi-core" or ((hsPkgs.pkgs-errors).buildDepError "yi-core"))
            (hsPkgs."yi-misc-modes" or ((hsPkgs.pkgs-errors).buildDepError "yi-misc-modes"))
            (hsPkgs."yi-mode-haskell" or ((hsPkgs.pkgs-errors).buildDepError "yi-mode-haskell"))
            (hsPkgs."yi-mode-javascript" or ((hsPkgs.pkgs-errors).buildDepError "yi-mode-javascript"))
            (hsPkgs."yi-rope" or ((hsPkgs.pkgs-errors).buildDepError "yi-rope"))
            ] ++ (pkgs.lib).optional (flags.vty) (hsPkgs."yi-frontend-vty" or ((hsPkgs.pkgs-errors).buildDepError "yi-frontend-vty"))) ++ (pkgs.lib).optional (flags.pango) (hsPkgs."yi-frontend-pango" or ((hsPkgs.pkgs-errors).buildDepError "yi-frontend-pango"))) ++ (pkgs.lib).optional (flags.vim) (hsPkgs."yi-keymap-vim" or ((hsPkgs.pkgs-errors).buildDepError "yi-keymap-vim"))) ++ (pkgs.lib).optional (flags.emacs) (hsPkgs."yi-keymap-emacs" or ((hsPkgs.pkgs-errors).buildDepError "yi-keymap-emacs"));
          buildable = true;
          };
        };
      };
    }