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
        name = "network-transport-inmemory";
        version = "0.5.2";
      };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP, Tweag I/O Limited";
      maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries, Alexander Vershilov";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "In-memory instantiation of Network.Transport";
      description = "This is a transport implementation that could be used for local\ncommunication in the same address space (i.e. one process).\n\nIt could be used either for testing purposes or for local\ncommunication that require the network-transport semantics.\n\nNB: network-tranpsport-inmemory does not support cross-transport\ncommunication. All endpoints that want to comminicate should be\ncreated using the same transport.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network-transport)
          (hsPkgs.data-accessor)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "TestMulticastInMemory" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-transport-inmemory)
            (hsPkgs.network-transport)
            (hsPkgs.network-transport-tests)
          ];
        };
        "TestInMemory" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network-transport-inmemory)
            (hsPkgs.network-transport-tests)
            (hsPkgs.network-transport)
          ];
        };
      };
    };
  }