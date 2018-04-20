{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "msgpack-rpc";
          version = "0.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010-2012, Hideyuki Tanaka";
        maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "http://msgpack.org/";
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
            hsPkgs.text
            hsPkgs.network
            hsPkgs.random
            hsPkgs.mtl
            hsPkgs.monad-control
            hsPkgs.conduit
            hsPkgs.network-conduit
            hsPkgs.attoparsec-conduit
            hsPkgs.msgpack
          ];
        };
        tests = {
          msgpack-rpc-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.async
              hsPkgs.hspec
              hsPkgs.msgpack-rpc
            ];
          };
        };
      };
    }