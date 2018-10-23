{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "thrift";
        version = "0.10.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "dev@thrift.apache.org";
      author = "";
      homepage = "http://thrift.apache.org";
      url = "";
      synopsis = "Haskell bindings for the Apache Thrift RPC system";
      description = "Haskell bindings for the Apache Thrift RPC system. Requires the use of the thrift code generator.";
      buildType = "Simple";
    };
    components = {
      "thrift" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.hashable)
          (hsPkgs.HTTP)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          (hsPkgs.split)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [ (hsPkgs.network) ]);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.thrift)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }