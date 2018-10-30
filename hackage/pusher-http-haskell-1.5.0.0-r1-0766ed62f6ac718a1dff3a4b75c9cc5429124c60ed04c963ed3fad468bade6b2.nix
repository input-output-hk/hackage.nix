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
      specVersion = "1.18";
      identifier = {
        name = "pusher-http-haskell";
        version = "1.5.0.0";
      };
      license = "MIT";
      copyright = "(c) Will Sewell, 2016";
      maintainer = "me@willsewell.com";
      author = "Will Sewell";
      homepage = "https://github.com/pusher-community/pusher-http-haskell";
      url = "";
      synopsis = "Haskell client library for the Pusher HTTP API";
      description = "Functions that correspond to endpoints of the Pusher HTTP\nAPI. Messages can be triggered, and information about the\nchannel can be queried. Additionally there are functions\nfor authenticating users of private and presence channels.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.hashable)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.HTTP)
          (hsPkgs.memory)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.pusher-http-haskell)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            (hsPkgs.HTTP)
            (hsPkgs.network-uri)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.memory)
            (hsPkgs.vector)
            (hsPkgs.scientific)
          ];
        };
      };
    };
  }