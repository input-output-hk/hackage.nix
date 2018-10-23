{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "network-messagepack-rpc";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yuji-yamamoto@iij.ad.jp, kazu@iij.ad.jp";
      author = "Yuji Yamamoto and Kazu Yamamoto";
      homepage = "https://github.com/iij-ii/direct-hs/tree/master/network-messagepack-rpc";
      url = "";
      synopsis = "MessagePack RPC";
      description = "[MessagePack RPC](https://github.com/msgpack-rpc/msgpack-rpc/blob/master/spec.md) library based on the \"data-msgpack\" package.";
      buildType = "Simple";
    };
    components = {
      "network-messagepack-rpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-msgpack)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }