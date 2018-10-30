{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { travis = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hadoop-rpc";
        version = "1.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Jacob Stanley <jacob@stanley.io>";
      author = "Jacob Stanley, Conrad Parker, Luke Clifton";
      homepage = "http://github.com/jystic/hadoop-rpc";
      url = "";
      synopsis = "Use the Hadoop RPC interface from Haskell.";
      description = "Use the Hadoop RPC interface from Haskell.\n\nThis version only supports v9 of the RPC protocol (CDH 5.x and above).\n\nUse hadoop-rpc-0.x.x.x if you need v7 support.\n\n/The API is still evolving and is highly likely to change in the future./";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.exceptions)
          (hsPkgs.gsasl)
          (hsPkgs.hashable)
          (hsPkgs.monad-loops)
          (hsPkgs.network)
          (hsPkgs.protobuf)
          (hsPkgs.random)
          (hsPkgs.socks)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          (hsPkgs.xmlhtml)
        ];
      };
      tests = {
        "hdfs-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hadoop-rpc)
            (hsPkgs.protobuf)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }