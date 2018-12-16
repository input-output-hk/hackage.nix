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
        name = "pubnub";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "t@crashfast.com";
      author = "Tristan Sloughter";
      homepage = "http://github.com/pubnub/haskell";
      url = "";
      synopsis = "PubNub Haskell SDK";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.conduit)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
          (hsPkgs.uuid)
          (hsPkgs.async)
          (hsPkgs.data-default)
          (hsPkgs.SHA)
          (hsPkgs.cipher-aes)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-cipher-types)
          (hsPkgs.base64-bytestring)
        ];
      };
      exes = {
        "hello_world" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.pubnub)
            (hsPkgs.aeson)
            (hsPkgs.text)
          ];
        };
        "chat" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.pubnub)
            (hsPkgs.text)
          ];
        };
        "test-pubnub-haskell" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.pubnub)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
          ];
        };
      };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.pubnub)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
          ];
        };
      };
    };
  }