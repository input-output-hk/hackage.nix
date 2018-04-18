{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "usb-enumerator";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Bas van Dijk <v.dijk.bas@gmail.com>";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk <v.dijk.bas@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Iteratee enumerators for the usb package";
        description = "This packages provides iteratee enumerators for the @usb@ package.";
        buildType = "Custom";
      };
      components = {
        usb-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.bindings-libusb
            hsPkgs.iteratee
            hsPkgs.transformers
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.MonadCatchIO-transformers-foreign
            hsPkgs.usb
          ];
        };
      };
    }