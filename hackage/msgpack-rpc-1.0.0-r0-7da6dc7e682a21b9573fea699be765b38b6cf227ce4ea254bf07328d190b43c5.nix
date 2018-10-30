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
        name = "msgpack-rpc";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2015, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "A MessagePack-RPC Implementation";
      description = "A MessagePack-RPC Implementation <http://msgpack.org/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.binary-conduit)
          (hsPkgs.exceptions)
          (hsPkgs.binary)
          (hsPkgs.msgpack)
        ];
      };
      tests = {
        "msgpack-rpc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.async)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.msgpack-rpc)
          ];
        };
      };
    };
  }