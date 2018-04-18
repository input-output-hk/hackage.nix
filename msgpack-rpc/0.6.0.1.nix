{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "msgpack-rpc";
          version = "0.6.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010, Hideyuki Tanaka";
        maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "http://github.com/msgpack/msgpack-rpc";
        url = "";
        synopsis = "A MessagePack-RPC Implementation";
        description = "A MessagePack-RPC Implementation <http://msgpack.org/>";
        buildType = "Simple";
      };
      components = {
        msgpack-rpc = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.random
            hsPkgs.enumerator
            hsPkgs.attoparsec-enumerator
            hsPkgs.msgpack
            hsPkgs.transformers
            hsPkgs.deepseq
          ];
        };
      };
    }