{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      development = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "shake-literate";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright: (c) 2018 Vanessa McHale";
        maintainer = "vanessa.mchale@iohk.io";
        author = "Vanessa McHale";
        homepage = "";
        url = "";
        synopsis = "Rules for building literate programs in shake";
        description = "Library for building literate programs in [shake](hackage.haskell.org/package/shake), with support for [illiterate](http://github.com/vmchale/illiterate).";
        buildType = "Simple";
      };
      components = {
        shake-literate = {
          depends  = [
            hsPkgs.base
            hsPkgs.shake
            hsPkgs.cpphs
          ];
        };
      };
    }