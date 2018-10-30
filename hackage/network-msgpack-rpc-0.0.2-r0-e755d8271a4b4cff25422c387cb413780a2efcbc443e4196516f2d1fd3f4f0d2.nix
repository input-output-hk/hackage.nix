{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-msgpack-rpc";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009-2016, Hideyuki Tanaka";
      maintainer = "Iphigenia Df <iphydf@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "A MessagePack-RPC Implementation";
      description = "A MessagePack-RPC Implementation <http://msgpack.org/>\n\nThis is a fork of msgpack-haskell <https://github.com/msgpack/msgpack-haskell>,\nsince the original author is unreachable. This fork incorporates a number of\nbugfixes and is actively being developed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-conduit)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.data-default-class)
          (hsPkgs.data-msgpack)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "testsuite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-msgpack-rpc)
          ];
        };
      };
    };
  }