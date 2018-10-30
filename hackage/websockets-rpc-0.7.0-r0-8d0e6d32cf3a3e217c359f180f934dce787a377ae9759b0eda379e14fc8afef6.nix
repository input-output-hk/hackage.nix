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
        name = "websockets-rpc";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "BSD-3";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/websockets-rpc#readme";
      url = "";
      synopsis = "Simple streaming RPC mechanism using WebSockets";
      description = "Please see the README on Github at <https://github.com/athanclark/sparrow-server#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.wai-transformers)
          (hsPkgs.websockets)
          (hsPkgs.websockets-simple)
        ];
      };
      tests = {
        "sparrow-server-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.hashable)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.uuid)
            (hsPkgs.wai-transformers)
            (hsPkgs.websockets)
            (hsPkgs.websockets-rpc)
            (hsPkgs.websockets-simple)
          ];
        };
      };
    };
  }