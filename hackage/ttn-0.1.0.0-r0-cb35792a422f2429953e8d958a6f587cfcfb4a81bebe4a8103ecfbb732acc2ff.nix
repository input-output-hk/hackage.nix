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
        name = "ttn";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/sorki/data-ttn";
      url = "";
      synopsis = "Things Tracker Network JSON Types";
      description = "Parse JSONs from TTN MQTT API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.timerep)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "data-ttn-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ttn)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.raw-strings-qq)
          ];
        };
      };
    };
  }