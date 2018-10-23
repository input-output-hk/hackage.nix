{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "push-notify-apn";
        version = "0.1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Memrange UG";
      maintainer = "hc@hcesperer.org";
      author = "Hans-Christian Esperer";
      homepage = "https://github.com/memrange/apn#readme";
      url = "";
      synopsis = "Send push notifications to mobile iOS devices";
      description = "push-notify-apn is a library and command line utility that can be used to send\npush notifications to mobile devices running iOS. Push notifications are small\nmessages that can be sent to apps on smart phones and tablets\nwithout the need to keep open a long lived TCP connection per app, dramatically\nreducing the power consumption in standby mode.";
      buildType = "Simple";
    };
    components = {
      "push-notify-apn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.http2)
          (hsPkgs.http2-client)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tls)
          (hsPkgs.x509)
          (hsPkgs.x509-store)
        ];
      };
      exes = {
        "sendapn" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.push-notify-apn)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "apn-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.push-notify-apn)
          ];
        };
      };
    };
  }