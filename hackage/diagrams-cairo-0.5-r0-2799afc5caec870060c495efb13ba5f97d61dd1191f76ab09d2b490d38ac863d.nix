{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "diagrams-cairo"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Cairo backend for diagrams drawing EDSL";
      description = "A full-featured backend for rendering\ndiagrams using the cairo rendering engine.\nTo get started, see \"Diagrams.Backend.Cairo.CmdLine\".\n\nNOTE: the most recent release of gtk2hs does\nnot build under GHC 7.4.1. To get diagrams-cairo\nto work under GHC 7.4.1 you'll have to install\nthe latest development version of gtk2hs\n(<http://projects.haskell.org/gtk2hs/development/#development>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.old-time)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.cairo)
          (hsPkgs.cmdargs)
          (hsPkgs.gtk)
          (hsPkgs.split)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix)) ++ (pkgs.lib).optionals (compiler.isGhc && ((compiler.version).ge "7.2.1" && (compiler.version).lt "7.4")) [
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          ]) ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "7.4.1") [
          (hsPkgs.cairo)
          (hsPkgs.gtk)
          ];
        };
      };
    }