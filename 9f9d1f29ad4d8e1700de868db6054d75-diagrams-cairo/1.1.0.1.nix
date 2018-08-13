{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "diagrams-cairo";
        version = "1.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Cairo backend for diagrams drawing EDSL";
      description = "A full-featured backend for rendering\ndiagrams using the cairo rendering engine.\n\n* \"Diagrams.Backend.Cairo.CmdLine\" - if you're\njust getting started with diagrams, begin here.\n\n* \"Diagrams.Backend.Cairo\" - look at this next.\nThe general API for the cairo backend.\n\n* \"Diagrams.Backend.Cairo.Internal\" - the\nimplementation guts of the cairo backend.\nUsers should normally not need to import this\nmodule.\n\n* \"Diagrams.Backend.Cairo.Text\" - cairo-specific\ntext support, including automatic bounding\nboxes.\n\n* \"Diagrams.Backend.Cairo.List\" - render diagrams\nto two-dimensional lists of colors (/i.e./\npixels).\n\n* \"Diagrams.Backend.Cairo.Ptr\" - render diagrams\nto buffers in memory.";
      buildType = "Simple";
    };
    components = {
      "diagrams-cairo" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.old-time)
          (hsPkgs.time)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.cairo)
          (hsPkgs.colour)
          (hsPkgs.split)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.data-default-class)
          (hsPkgs.statestack)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
          (hsPkgs.bytestring)
          (hsPkgs.optparse-applicative)
          (hsPkgs.hashable)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }