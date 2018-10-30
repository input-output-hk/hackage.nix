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
      specVersion = "1.8";
      identifier = {
        name = "msgpack-rpc";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010-2012, Hideyuki Tanaka";
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
          (hsPkgs.conduit)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.deepseq)
          (hsPkgs.msgpack)
        ];
      };
    };
  }