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
          name = "dsp";
          version = "0.2.2";
        };
        license = "LicenseRef-GPL";
        copyright = "Matt Donadio, 2003";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Matt Donadio <m.p.donadio@ieee.org>";
        homepage = "http://www.haskell.org/haskellwiki/DSP";
        url = "";
        synopsis = "Haskell Digital Signal Processing";
        description = "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation";
        buildType = "Simple";
      };
      components = {
        dsp = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.array
              hsPkgs.random
              hsPkgs.base
            ]
            else [ hsPkgs.base ];
        };
      };
    }