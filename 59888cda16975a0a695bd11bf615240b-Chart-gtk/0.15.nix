{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Chart-gtk";
        version = "0.15";
      };
      license = "BSD-3-Clause";
      copyright = "Tim Docker, 2006-2010";
      maintainer = "Tim Docker <tim@dockerz.net>";
      author = "Tim Docker <tim@dockerz.net>";
      homepage = "http://www.dockerz.net/software/chart.html";
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
        ] ++ (if _flags.splitbase
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