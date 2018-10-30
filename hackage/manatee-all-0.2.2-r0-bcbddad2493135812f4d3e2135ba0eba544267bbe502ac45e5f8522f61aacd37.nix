{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "manatee-all";
        version = "0.2.2";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.manatee-core)
          (hsPkgs.manatee-browser)
          (hsPkgs.manatee-curl)
          (hsPkgs.manatee-editor)
          (hsPkgs.manatee-filemanager)
          (hsPkgs.manatee-imageviewer)
          (hsPkgs.manatee-ircclient)
          (hsPkgs.manatee-mplayer)
          (hsPkgs.manatee-pdfviewer)
          (hsPkgs.manatee-processmanager)
          (hsPkgs.manatee-reader)
          (hsPkgs.manatee-terminal)
          (hsPkgs.manatee-welcome)
          (hsPkgs.manatee)
        ];
      };
      exes = { "manatee-all" = {}; };
    };
  }