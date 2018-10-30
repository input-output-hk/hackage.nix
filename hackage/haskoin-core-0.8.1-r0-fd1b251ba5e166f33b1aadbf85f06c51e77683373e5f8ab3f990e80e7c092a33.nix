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
        name = "haskoin-core";
        version = "0.8.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "xenog@protonmail.com";
      author = "Philippe Laprade,\nJean-Pierre Rupp";
      homepage = "http://github.com/haskoin/haskoin#readme";
      url = "";
      synopsis = "Bitcoin & Bitcoin Cash library for Haskell";
      description = "Haskoin Core is a complete Bitcoin and Bitcoin Cash library of functions and data types for Haskell developers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.entropy)
          (hsPkgs.hashable)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.murmur3)
          (hsPkgs.network)
          (hsPkgs.scientific)
          (hsPkgs.secp256k1-haskell)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.haskoin-core)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }