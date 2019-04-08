{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "line-bot-sdk"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Alexandre Moreno";
      maintainer = "Alexandre Moreno <alexmorenocano@gmail.com>";
      author = "Alexandre Moreno";
      homepage = "https://github.com/moleike/line-bot-sdk#readme";
      url = "";
      synopsis = "Haskell SDK for LINE Messaging API";
      description = "A Servant library for building LINE chatbots. This package is composed\nof the following modules:\n\n* A client library for the <https://developers.line.biz/en/docs/messaging-api/ LINE Messaging API>,\nincluding the 'Line' monad, which manages the channel credentials.\n\n* A servant combinator to write safe Line webhooks.\n\nTo get started, see the documentation for the @Line.Bot.Client@\nand @Line.Bot.Webhook@ modules below.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.base64-bytestring)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.errors)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client-tls)
          (hsPkgs.servant)
          (hsPkgs.string-conversions)
          (hsPkgs.servant-client)
          (hsPkgs.servant-client-core)
          (hsPkgs.servant-server)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          ];
        };
      exes = {
        "echo-server" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.line-bot-sdk)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.transformers)
            (hsPkgs.time)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "line-bot-sdk-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.line-bot-sdk)
            (hsPkgs.base64-bytestring)
            (hsPkgs.cryptohash-sha256)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-expectations)
            (hsPkgs.http-types)
            (hsPkgs.http-client)
            (hsPkgs.aeson)
            (hsPkgs.transformers)
            (hsPkgs.aeson-qq)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.servant-client-core)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.free)
            (hsPkgs.time)
            ];
          };
        };
      };
    }