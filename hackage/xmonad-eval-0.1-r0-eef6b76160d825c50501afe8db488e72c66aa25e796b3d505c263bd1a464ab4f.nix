{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2.1";
      identifier = {
        name = "xmonad-eval";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "asgaroth_@gmx.de";
      author = "Daniel Schoepe";
      homepage = "http://xmonad.org/";
      url = "";
      synopsis = "Module for evaluation Haskell expressions in the running xmonad instance";
      description = "This modules allows the evaluation of Haskell expressions in the context of the currently\nrunning xmonad, similar to emacs' eval feature.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.hint)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.X11)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad)
          (hsPkgs.xmonad-contrib)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }