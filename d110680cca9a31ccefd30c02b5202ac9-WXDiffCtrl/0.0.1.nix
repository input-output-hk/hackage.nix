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
          name = "WXDiffCtrl";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jeremy.odonoghue@gmail.com";
        author = "Jeremy O'Donoghue";
        homepage = "http://wewantarock.wordpress.com";
        url = "";
        synopsis = "WXDiffCtrl";
        description = "A very simple diff control, written as an example of how to create a\ncustom control in wxHaskell.";
        buildType = "Simple";
      };
      components = {
        WXDiffCtrl = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.wx
              hsPkgs.wxcore
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
              hsPkgs.wx
              hsPkgs.wxcore
            ];
        };
      };
    }