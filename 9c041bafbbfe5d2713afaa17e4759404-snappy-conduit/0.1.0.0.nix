{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snappy-conduit";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2015, Toru Tomita";
        maintainer = "toru.tomita@gmail.com";
        author = "Toru Tomita";
        homepage = "http://github.com/tatac1/snappy-conduit/";
        url = "";
        synopsis = "Conduit bindings for Snappy (see snappy package)";
        description = "Conduit bindings for Snappy (see snappy package)";
        buildType = "Simple";
      };
      components = {
        snappy-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.snappy
            hsPkgs.conduit
            hsPkgs.bytestring
          ];
        };
      };
    }