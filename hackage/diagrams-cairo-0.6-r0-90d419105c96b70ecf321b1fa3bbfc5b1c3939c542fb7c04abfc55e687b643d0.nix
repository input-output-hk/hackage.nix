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
        version = "0.6";
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
      "library" = {
        depends  = [
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
          (hsPkgs.cmdargs)
          (hsPkgs.colour)
          (hsPkgs.split)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }