{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rtlsdr";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Adam Walker";
        maintainer = "adamwalker10@gmail.com";
        author = "Adam Walker";
        homepage = "https://github.com/adamwalker/hrtlsdr";
        url = "";
        synopsis = "Bindings to librtlsdr";
        description = "Bindings to librtlsdr. Turns your Realtek RTL2832 based DVB dongle into a SDR receiver.\n\nFor more information see: <http://sdr.osmocom.org/trac/wiki/rtl-sdr>\n\nThis library is a straightforward wrapper around the C library functions. See the C library documentation: <https://github.com/steve-m/librtlsdr/blob/master/include/rtl-sdr.h>";
        buildType = "Simple";
      };
      components = {
        rtlsdr = {
          depends  = [ hsPkgs.base ];
          libs = [ pkgs.rtlsdr ];
        };
      };
    }