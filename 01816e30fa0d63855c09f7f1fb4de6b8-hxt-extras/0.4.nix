{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hxt-extras";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Tony Morris";
        maintainer = "ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ";
        author = "Tony Morris";
        homepage = "http://code.google.com/p/hxt-extras/";
        url = "";
        synopsis = "Extra functions for HXT";
        description = "Extra library functionality for HXT";
        buildType = "Simple";
      };
      components = {
        hxt-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
          ];
        };
      };
    }