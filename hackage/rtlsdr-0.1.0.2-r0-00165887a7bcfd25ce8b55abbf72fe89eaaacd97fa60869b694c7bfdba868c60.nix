{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rtlsdr"; version = "0.1.0.2"; };
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
      "library" = {
        depends = [ (hsPkgs.base) ];
        libs = [ (pkgs."rtlsdr") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }