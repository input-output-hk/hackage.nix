{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "msgpack-rpc";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010, Hideyuki Tanaka";
      maintainer = "tanaka.hideyuki@gmail.com";
      author = "Hideyuki Tanaka";
      homepage = "";
      url = "";
      synopsis = "A MessagePack-RPC Implementation";
      description = "A MessagePack-RPC Implementation <http://msgpack.sourceforge.net/>";
      buildType = "Simple";
    };
    components = {
      "msgpack-rpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.msgpack)
        ];
      };
    };
  }