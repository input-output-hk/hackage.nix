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
        name = "json-rpc";
        version = "0.1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "root@haskoin.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/json-rpc";
      url = "";
      synopsis = "Fully-featured JSON-RPC 2.0 library";
      description = "This JSON-RPC library is fully-compatible with JSON-RPC 2.0 and\npartially-compatible with JSON-RPC 1.0. It provides an interface that combines\na JSON-RPC client and server. It can set and keep track of request ids to\nparse responses. There is support for sending and receiving notifications.\nYou may use any underlying transport. Basic TCP client and server provided.";
      buildType = "Simple";
    };
    components = {
      "json-rpc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.stm-conduit)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "test-json-rpc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.json-rpc)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }