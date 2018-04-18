{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      stdcall = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hid";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Dimitri Sabadie";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Interface to hidapi library";
        description = "Requires both hidapi-hidraw and hidapi-libusb.";
        buildType = "Simple";
      };
      components = {
        hid = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
          ];
        };
      };
    }