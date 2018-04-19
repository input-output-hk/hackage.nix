{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dbus-core";
          version = "0.9";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin";
        homepage = "https://john-millikin.com/software/dbus-core/";
        url = "";
        synopsis = "Low-level D-Bus protocol implementation";
        description = "";
        buildType = "Simple";
      };
      components = {
        dbus-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.unix
            hsPkgs.network
            hsPkgs.libxml-sax
            hsPkgs.xml-types
            hsPkgs.vector
          ];
        };
      };
    }