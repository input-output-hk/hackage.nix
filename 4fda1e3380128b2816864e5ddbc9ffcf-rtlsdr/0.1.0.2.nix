{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rtlsdr";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Adam Walker";
        maintainer = "adamwalker10@gmail.com";
        author = "Adam Walker";
        homepage = "";
        url = "";
        synopsis = "Bindings to librtlsdr";
        description = "Bindings to librtlsdr. Turns your Realtek RTL2832 based DVB dongle into a SDR receiver.\n\nFor more information see: <http://sdr.osmocom.org/trac/wiki/rtl-sdr>";
        buildType = "Simple";
      };
      components = {
        rtlsdr = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.rtlsdr ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }