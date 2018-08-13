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
        name = "stunclient";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "Philipp Balzarek";
      maintainer = "p.balzarek@googlemail.com";
      author = "Philipp Balzarek";
      homepage = "";
      url = "";
      synopsis = "RFC 5389: Session Traversal Utilities for NAT (STUN) client";
      description = "RFC 5389: Session Traversal Utilities for NAT (STUN) client";
      buildType = "Simple";
    };
    components = {
      "stunclient" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.stringprep)
          (hsPkgs.random)
          (hsPkgs.digest)
          (hsPkgs.unbounded-delays)
          (hsPkgs.cryptohash-cryptoapi)
          (hsPkgs.cryptohash)
          (hsPkgs.crypto-api)
        ];
      };
      tests = {
        "test-serialize" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.transformers)
            (hsPkgs.cereal)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.random)
            (hsPkgs.digest)
            (hsPkgs.unbounded-delays)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }