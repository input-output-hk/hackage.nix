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
        name = "ttn-client";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/sorki/ttn-client";
      url = "";
      synopsis = "TheThingsNetwork client";
      description = "Connect to TTN MQTT API, receive and decode messages";
      buildType = "Simple";
    };
    components = {
      "ttn-client" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ttn)
          (hsPkgs.config-ini)
          (hsPkgs.pretty-simple)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.mqtt-hs)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.monad-logger)
          (hsPkgs.binary)
          (hsPkgs.base64-bytestring)
        ];
      };
      exes = {
        "ttnc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ttn)
            (hsPkgs.ttn-client)
            (hsPkgs.stm)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.pretty-simple)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.mqtt-hs)
            (hsPkgs.cayene-lpp)
          ];
        };
      };
    };
  }