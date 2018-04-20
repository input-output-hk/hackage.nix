{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xmonad-vanessa";
          version = "0.1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Vanessa McHale";
        maintainer = "tmchale@wisc.edu";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/xmonad-vanessa#readme";
        url = "";
        synopsis = "Custom xmonad, which uses stack and sets various defaults";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        xmonad-vanessa = {
          depends  = [
            hsPkgs.base
            hsPkgs.xmonad
            hsPkgs.xmonad-contrib
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