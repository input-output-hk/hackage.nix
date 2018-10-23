{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Chart-gtk";
        version = "0.17";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Docker, 2006-2010";
      maintainer = "Tim Docker <tim@dockerz.net>";
      author = "Tim Docker <tim@dockerz.net>";
      homepage = "https://github.com/timbod7/haskell-chart/wiki";
      url = "";
      synopsis = "Utility functions for using the chart library with GTK";
      description = "Utility functions for using the chart library with GTK";
      buildType = "Simple";
    };
    components = {
      "Chart-gtk" = {
        depends  = [
          (hsPkgs.cairo)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.array)
          (hsPkgs.data-accessor)
          (hsPkgs.data-accessor-template)
          (hsPkgs.colour)
          (hsPkgs.gtk)
          (hsPkgs.Chart)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.array)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }