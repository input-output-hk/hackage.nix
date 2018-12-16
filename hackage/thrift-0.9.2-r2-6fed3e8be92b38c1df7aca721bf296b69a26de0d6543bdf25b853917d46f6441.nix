{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "thrift";
        version = "0.9.2";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ghc-prim)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
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
    };
  }