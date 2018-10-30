{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      example = false;
      example-client = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "websockets-rpc";
        version = "0.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Simple streaming RPC mechanism using WebSockets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
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
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.websockets-rpc)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.exceptions)
            (hsPkgs.MonadRandom)
            (hsPkgs.mtl)
            (hsPkgs.wai-transformers)
            (hsPkgs.websockets)
            (hsPkgs.websockets-simple)
          ];
        };
        "example-client" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.websockets-rpc)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.exceptions)
            (hsPkgs.MonadRandom)
            (hsPkgs.mtl)
            (hsPkgs.wai-transformers)
            (hsPkgs.websockets)
            (hsPkgs.websockets-simple)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.websockets-rpc)
            (hsPkgs.aeson)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }