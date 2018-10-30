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
      specVersion = "1.10";
      identifier = {
        name = "diagrams-cairo";
        version = "1.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "http://projects.haskell.org/diagrams";
      url = "";
      synopsis = "Cairo backend for diagrams drawing EDSL";
      description = "A full-featured backend for rendering\ndiagrams using the cairo rendering engine.\n\nThis ultimately depends on a C library, via\nHaskell's FFI, and can be difficult to install on\nsome platforms. If you are just looking for a\nquick way to visualize diagrams, try the\ndiagrams-svg backend; if you want raster output\nlike PNG, try the diagrams-rasterific backend; if\nyou want to embed diagrams in LaTeX documents,\ntry diagrams-pgf.\n\n* \"Diagrams.Backend.Cairo.CmdLine\" - if you're\njust getting started with diagrams, begin here.\n\n* \"Diagrams.Backend.Cairo\" - look at this next.\nThe general API for the cairo backend.\n\n* \"Diagrams.Backend.Cairo.Internal\" - the\nimplementation guts of the cairo backend.\nUsers should normally not need to import this\nmodule.\n\n* \"Diagrams.Backend.Cairo.List\" - render diagrams\nto two-dimensional lists of colors (/i.e./\npixels).\n\n* \"Diagrams.Backend.Cairo.Ptr\" - render diagrams\nto buffers in memory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.filepath)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.cairo)
          (hsPkgs.pango)
          (hsPkgs.colour)
          (hsPkgs.split)
          (hsPkgs.containers)
          (hsPkgs.lens)
          (hsPkgs.data-default-class)
          (hsPkgs.statestack)
          (hsPkgs.JuicyPixels)
          (hsPkgs.vector)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.optparse-applicative)
          (hsPkgs.transformers)
          (hsPkgs.hashable)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }