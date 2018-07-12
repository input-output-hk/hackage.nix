{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      stdcall = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hid";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Dimitri Sabadie";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "https://github.com/phaazon/hid";
        url = "";
        synopsis = "Interface to hidapi library";
        description = "Requires the hidapi-libusb C API and pkg-config.\n\nFor information\n<https://github.com/signal11/hidapi/tree/master/libusb here>";
        buildType = "Simple";
      };
      components = {
        "hid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
          ];
          pkgconfig = [
            pkgconfPkgs.hidapi-libusb
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }