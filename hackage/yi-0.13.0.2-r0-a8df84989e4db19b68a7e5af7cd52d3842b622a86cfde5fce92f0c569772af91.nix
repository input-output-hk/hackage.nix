{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yi"; version = "0.13.0.2"; };
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
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."yi-core" or ((hsPkgs.pkgs-errors).buildDepError "yi-core"))
            (hsPkgs."yi-frontend-vty" or ((hsPkgs.pkgs-errors).buildDepError "yi-frontend-vty"))
            (hsPkgs."yi-keymap-emacs" or ((hsPkgs.pkgs-errors).buildDepError "yi-keymap-emacs"))
            (hsPkgs."yi-mode-haskell" or ((hsPkgs.pkgs-errors).buildDepError "yi-mode-haskell"))
            (hsPkgs."yi-mode-javascript" or ((hsPkgs.pkgs-errors).buildDepError "yi-mode-javascript"))
            (hsPkgs."yi-misc-modes" or ((hsPkgs.pkgs-errors).buildDepError "yi-misc-modes"))
            ];
          buildable = true;
          };
        };
      };
    }