{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "dsp";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Matt Donadio, 2003";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Matt Donadio <m.p.donadio@ieee.org>";
        homepage = "http://haskelldsp.sourceforge.net/";
        url = "http://darcs.haskell.org/dsp/";
        synopsis = "Haskell Digital Signal Processing";
        description = "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation";
        buildType = "Simple";
      };
      components = {
        dsp = {
          depends  = [
            hsPkgs.mtl
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.random
            ]
            else [ hsPkgs.base ]);
        };
      };
    }