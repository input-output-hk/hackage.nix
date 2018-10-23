{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "xmobar";
        version = "0.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unibz.it";
      author = "Andrea Rossato";
      homepage = "http://code.haskell.org/~arossato/xmobar";
      url = "";
      synopsis = "A Minimalistic Text Based Status Bar";
      description = "Xmobar is a minimalistic text based status bar.\n\nInspired by the Ion3 status bar, it supports similar features,\nlike dynamic color management, output templates, and extensibility\nthrough plugins.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "xmobar" = {
          depends  = [
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.unix)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.stm)
          ] ++ (if flags.small_base
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.process)
              (hsPkgs.old-time)
              (hsPkgs.old-locale)
              (hsPkgs.bytestring)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }