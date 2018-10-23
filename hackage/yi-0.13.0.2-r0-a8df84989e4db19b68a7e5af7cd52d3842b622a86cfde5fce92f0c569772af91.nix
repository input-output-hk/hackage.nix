{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yi";
        version = "0.13.0.2";
      };
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.yi-core)
            (hsPkgs.yi-frontend-vty)
            (hsPkgs.yi-keymap-emacs)
            (hsPkgs.yi-mode-haskell)
            (hsPkgs.yi-mode-javascript)
            (hsPkgs.yi-misc-modes)
          ];
        };
      };
    };
  }