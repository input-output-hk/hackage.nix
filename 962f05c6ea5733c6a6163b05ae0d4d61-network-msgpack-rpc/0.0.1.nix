{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "network-msgpack-rpc";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009-2016, Hideyuki Tanaka";
        maintainer = "Iphigenia Df <iphydf@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "http://msgpack.org/";
        url = "";
        synopsis = "A MessagePack-RPC Implementation";
        description = "A MessagePack-RPC Implementation <http://msgpack.org/>";
        buildType = "Simple";
      };
      components = {
        "network-msgpack-rpc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.binary-conduit
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.data-msgpack
            hsPkgs.exceptions
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
          ];
        };
        tests = {
          "testsuite" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.network-msgpack-rpc
            ];
          };
        };
      };
    }