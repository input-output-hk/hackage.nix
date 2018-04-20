{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "netstring-enumerator";
          version = "0.1.0.1";
        };
        license = "GPL-3.0-only";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Enumerator-based netstring parsing";
        description = "/Netstrings/ are a simple way to encode arbitrary binary data, so it\ncan be decoded without requiring sentinel bytes.";
        buildType = "Simple";
      };
      components = {
        netstring-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.enumerator
            hsPkgs.transformers
          ];
        };
      };
    }