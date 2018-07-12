{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Chart";
          version = "0.17";
        };
        license = "BSD-3-Clause";
        copyright = "Tim Docker, 2006-2010";
        maintainer = "Tim Docker <tim@dockerz.net>";
        author = "Tim Docker <tim@dockerz.net>";
        homepage = "https://github.com/timbod7/haskell-chart/wiki";
        url = "";
        synopsis = "A library for generating 2D Charts and Plots";
        description = "A library for generating 2D Charts and Plots, based upon the cairo graphics library.";
        buildType = "Simple";
      };
      components = {
        "Chart" = {
          depends  = [
            hsPkgs.cairo
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.array
            hsPkgs.data-accessor
            hsPkgs.data-accessor-template
            hsPkgs.colour
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.mtl
              hsPkgs.array
            ]
            else [ hsPkgs.base ]);
        };
      };
    }