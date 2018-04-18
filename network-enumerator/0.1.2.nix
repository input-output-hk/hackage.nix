{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      network-includes-bytestring = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-enumerator";
          version = "0.1.2";
        };
        license = "MIT";
        copyright = "Copyright (c) John Millikin 2010";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "http://john-millikin.com/software/network-enumerator/";
        url = "";
        synopsis = "Enumerators for network sockets";
        description = "";
        buildType = "Simple";
      };
      components = {
        network-enumerator = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.enumerator
          ] ++ (if _flags.network-includes-bytestring
            then [ hsPkgs.network ]
            else [
              hsPkgs.network
              hsPkgs.network-bytestring
            ]);
        };
      };
    }