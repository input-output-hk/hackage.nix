{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "manatee-all"; version = "0.2.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2011 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Virtual package to install all Manatee packages.";
      description = "Virtual package to install all Manatee packages, please type command `manatee` to play it. :)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."manatee-core" or ((hsPkgs.pkgs-errors).buildDepError "manatee-core"))
          (hsPkgs."manatee-browser" or ((hsPkgs.pkgs-errors).buildDepError "manatee-browser"))
          (hsPkgs."manatee-curl" or ((hsPkgs.pkgs-errors).buildDepError "manatee-curl"))
          (hsPkgs."manatee-editor" or ((hsPkgs.pkgs-errors).buildDepError "manatee-editor"))
          (hsPkgs."manatee-filemanager" or ((hsPkgs.pkgs-errors).buildDepError "manatee-filemanager"))
          (hsPkgs."manatee-imageviewer" or ((hsPkgs.pkgs-errors).buildDepError "manatee-imageviewer"))
          (hsPkgs."manatee-ircclient" or ((hsPkgs.pkgs-errors).buildDepError "manatee-ircclient"))
          (hsPkgs."manatee-mplayer" or ((hsPkgs.pkgs-errors).buildDepError "manatee-mplayer"))
          (hsPkgs."manatee-pdfviewer" or ((hsPkgs.pkgs-errors).buildDepError "manatee-pdfviewer"))
          (hsPkgs."manatee-processmanager" or ((hsPkgs.pkgs-errors).buildDepError "manatee-processmanager"))
          (hsPkgs."manatee-reader" or ((hsPkgs.pkgs-errors).buildDepError "manatee-reader"))
          (hsPkgs."manatee-terminal" or ((hsPkgs.pkgs-errors).buildDepError "manatee-terminal"))
          (hsPkgs."manatee-welcome" or ((hsPkgs.pkgs-errors).buildDepError "manatee-welcome"))
          (hsPkgs."manatee" or ((hsPkgs.pkgs-errors).buildDepError "manatee"))
          ];
        buildable = true;
        };
      exes = { "manatee-all" = { buildable = true; }; };
      };
    }