{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Chart";
          version = "0.5";
        };
        license = "BSD-4-Clause";
        copyright = "Tim Docker, 2006";
        maintainer = "Tim Docker <tim@dockerz.net>";
        author = "Tim Docker <tim@dockerz.net>";
        homepage = "http://www.dockerz.net/software/chart.html";
        url = "";
        synopsis = "A library for generating 2D Charts and Plots";
        description = "A library for generating 2D Charts and Plots, based upon the cairo graphics library.";
        buildType = "Custom";
      };
      components = {
        Chart = {
          depends  = [
            hsPkgs.gtk
            hsPkgs.cairo
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.old-locale
              hsPkgs.old-time
            ]
            else [ hsPkgs.base ]);
        };
      };
    }