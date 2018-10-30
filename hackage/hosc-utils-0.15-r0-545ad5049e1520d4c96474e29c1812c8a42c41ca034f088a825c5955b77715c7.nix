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
      specVersion = "1.8";
      identifier = {
        name = "hosc-utils";
        version = "0.15";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape and others, 2006-2014";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hosc-utils";
      url = "";
      synopsis = "Haskell Open Sound Control Utilities";
      description = "hosc-utils";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hosc-json-cat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hosc)
            (hsPkgs.hosc-json)
            (hsPkgs.json)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
        "hosc-json-cgi" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cgi)
            (hsPkgs.hosc)
            (hsPkgs.hosc-json)
            (hsPkgs.json)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.www-minus)
          ];
        };
        "hosc-json-console" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.haskeline)
            (hsPkgs.hosc)
            (hsPkgs.hosc-json)
            (hsPkgs.json)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
        "hosc-json-nrt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hosc)
            (hsPkgs.hosc-json)
            (hsPkgs.hsc3)
            (hsPkgs.json)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
        "hosc-json-ws" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hosc)
            (hsPkgs.hosc-json)
            (hsPkgs.bytestring)
            (hsPkgs.json)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.websockets)
          ];
        };
      };
    };
  }