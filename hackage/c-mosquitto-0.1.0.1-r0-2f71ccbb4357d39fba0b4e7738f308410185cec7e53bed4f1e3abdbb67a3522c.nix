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
        name = "c-mosquitto";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017(c) Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/c-mosquitto#readme";
      url = "";
      synopsis = "Simpe mosquito MQTT binding able to work with the Amazons IoT";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
          (hsPkgs.primitive)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."mosquitto") ];
      };
      exes = {
        "c-mosquitto" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.c-mosquitto)
            (hsPkgs.options)
          ];
        };
      };
      tests = {
        "c-mosquitto-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.c-mosquitto)
          ];
        };
      };
    };
  }