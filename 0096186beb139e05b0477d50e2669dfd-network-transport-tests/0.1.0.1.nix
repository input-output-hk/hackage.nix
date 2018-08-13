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
      specVersion = "1.8";
      identifier = {
        name = "network-transport-tests";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Unit tests for Network.Transport implementations";
      description = "";
      buildType = "Simple";
    };
    components = {
      "network-transport-tests" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network-transport)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.ansi-terminal)
        ];
      };
    };
  }