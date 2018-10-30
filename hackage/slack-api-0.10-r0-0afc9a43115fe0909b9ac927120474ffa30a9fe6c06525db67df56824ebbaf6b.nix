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
        name = "slack-api";
        version = "0.10";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.errors)
          (hsPkgs.hashable)
          (hsPkgs.io-streams)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.tls)
          (hsPkgs.transformers)
          (hsPkgs.websockets)
          (hsPkgs.wreq)
          (hsPkgs.wuss)
        ];
      };
      exes = {
        "example_echobot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.slack-api)
          ];
        };
        "example_counterbot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.slack-api)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.lens)
          ];
        };
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