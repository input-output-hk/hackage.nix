{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "usb-safe";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Bas van Dijk";
        maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
        author = "Bas van Dijk";
        homepage = "";
        url = "";
        synopsis = "Wrapper around the usb package adding extra type-safety";
        description = "The usb library provides a standard Haskell abstracting layer over\nbindings-libusb providing: abstract types instead of Ptrs, automatic\nmarshalling and unmarshalling, automatic garbage collection,\nexceptions instead of integer return codes, etc..\n\nWhile all that is very nice there are still some things that you can\ndo wrong. For example doing I/O with a closed device or reading from\nor writing to an endpoint which doesn't belong to the claimed\ninterface. Or reading from an Out endpoint or writing to an In\nendpoint.\n\nusb-safe provides the following guarantees:\n\n* You can't reference handles to devices that are closed. In other words: no\nI/O with closed handles is possible.\n\n* The programmer specifies the region in which devices should remain open. On\nexit from the region the opened devices are automatically closed.\n\n* You can't reference handles to configurations that have not been set.\n\n* You can't reference handles to interfaces that have not been claimed.\n\n* You can't reference handles to alternates that have not been set.\n\n* You can't reference endpoints that don't belong to a setted alternate.\n\n* You can't read from an endpoint with an Out transfer direction.\n\n* You can't write to an endpoint with an In transfer direction.\n\n* You can't read from or write to endpoints with the unsupported transfer\ntypes Control and Isochronous. Only I/O with endpoints with the Bulk and\nInterrupt transfer types is allowed.\n\nThe primary technique used in usb-safe is called \\\"Lightweight monadic\nregions\\\" which was invented by Oleg Kiselyov and Chung-chieh Shan.\nSee:\n\n<http://okmij.org/ftp/Haskell/regions.html#light-weight>";
        buildType = "Simple";
      };
      components = {
        "usb-safe" = {
          depends  = [
            hsPkgs.base
            hsPkgs.usb
            hsPkgs.bytestring
            hsPkgs.unicode-symbols
            hsPkgs.transformers
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.monads-fd
          ];
        };
      };
    }