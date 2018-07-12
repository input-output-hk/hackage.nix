{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hails";
          version = "0.1";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "Amit Levy <levya at cs.stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
        author = "HAILS team";
        homepage = "";
        url = "";
        synopsis = "IFC enforcing web platform framework";
        description = "Hails is a framework for building multi-app web platforms.\nThis module exports a library for building Hails platforms.";
        buildType = "Simple";
      };
      components = {
        "hails" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.lio
            hsPkgs.iterIO
            hsPkgs.iterio-server
            hsPkgs.dclabel
            hsPkgs.mongoDB
            hsPkgs.transformers-base
            hsPkgs.parsec
            hsPkgs.monad-control
            hsPkgs.bson
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.compact-string-fix
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.cereal
            hsPkgs.binary
            hsPkgs.HsOpenSSL
            hsPkgs.unix
            hsPkgs.MissingH
            hsPkgs.SHA
            hsPkgs.pureMD5
            hsPkgs.SimpleAES
            hsPkgs.RSA
          ];
        };
      };
    }