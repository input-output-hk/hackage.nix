{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      library = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xmonad-vanessa";
          version = "0.1.1.5";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Vanessa McHale";
        maintainer = "vanessa.mchale@reconfigure.io";
        author = "Vanessa McHale";
        homepage = "https://hub.darcs.net/vmchale/xmonad-vanessa";
        url = "";
        synopsis = "Custom xmonad, which builds with stack or cabal.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        xmonad-vanessa = {
          depends  = [
            hsPkgs.base
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
            hsPkgs.composition-prelude
            hsPkgs.containers
            hsPkgs.process
            hsPkgs.X11
            hsPkgs.transformers
          ];
        };
        exes = {
          xmonad = {
            depends  = [
              hsPkgs.base
              hsPkgs.xmonad-vanessa
            ];
          };
          getkb = {
            depends  = [
              hsPkgs.base
              hsPkgs.xmonad-vanessa
            ];
          };
        };
        tests = {
          xmonad-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.xmonad-vanessa
              hsPkgs.hspec
              hsPkgs.xmonad
            ];
          };
        };
      };
    }