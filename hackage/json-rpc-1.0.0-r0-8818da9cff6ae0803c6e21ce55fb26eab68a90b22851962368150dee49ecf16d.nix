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
        name = "json-rpc";
        version = "1.0.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "https://github.com/xenog/json-rpc.git#readme";
      url = "";
      synopsis = "Fully-featured JSON-RPC 2.0 library";
      description = "Library compatible with JSON-RPC 2.0 and 1.0";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.stm-conduit)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "concurrent-client" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.json-rpc)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "concurrent-server" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.json-rpc)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "time-client" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.json-rpc)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
        "time-server" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.json-rpc)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "test-json-rpc" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.hspec)
            (hsPkgs.json-rpc)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.stm-conduit)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unliftio)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }