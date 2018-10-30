{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      emacs = true;
      pango = true;
      vim = true;
      vty = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yi";
        version = "0.13.1";
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
          depends  = ((([
            (hsPkgs.base)
            (hsPkgs.microlens-platform)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.yi-core)
            (hsPkgs.yi-misc-modes)
            (hsPkgs.yi-mode-haskell)
            (hsPkgs.yi-mode-javascript)
            (hsPkgs.yi-rope)
          ] ++ pkgs.lib.optional (flags.vty) (hsPkgs.yi-frontend-vty)) ++ pkgs.lib.optional (flags.pango) (hsPkgs.yi-frontend-pango)) ++ pkgs.lib.optional (flags.vim) (hsPkgs.yi-keymap-vim)) ++ pkgs.lib.optional (flags.emacs) (hsPkgs.yi-keymap-emacs);
        };
      };
    };
  }