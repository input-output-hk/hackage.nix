{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "msgpack-rpc";
        version = "0.5.0.0";
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
      "msgpack-rpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.msgpack)
          (hsPkgs.random)
          (hsPkgs.transformers)
          (hsPkgs.iteratee)
          (hsPkgs.deepseq)
        ];
      };
    };
  }