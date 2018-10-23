{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "slack-api";
        version = "0.9";
      };
      license = "MIT";
      copyright = "";
      maintainer = "matthewtpickering@gmail.com";
      author = "Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Slack RTM API.";
      description = "This library provides bindings to the <https://api.slack.com/rtm Slack Real Time Messaging API>.\nUsers should find it easy to program their own Slack bots using the functionality found in `Web.Slack`.\nThe bindings are very nearly complete. Library authors\nlooking to build bindings to the <https://api.slack.com/web Slack Web API> may\nfind the `FromJSON` instances located in `Web.Slack.Types`\nuseful.\nPlease note that the interface provided by this package is not yet stable. There are a number of unresolved\ninternal inconsistencies which have yet to be resolved by Slack HQ.";
      buildType = "Simple";
    };
    components = {
      "slack-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.websockets)
          (hsPkgs.wreq)
          (hsPkgs.text)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.openssl-streams)
          (hsPkgs.HsOpenSSL)
          (hsPkgs.io-streams)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.time-locale-compat)
          (hsPkgs.errors)
          (hsPkgs.monad-loops)
          (hsPkgs.transformers)
          (hsPkgs.time)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.slack-api)
            (hsPkgs.base)
          ];
        };
      };
    };
  }