{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "uid"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "phil@haphazardhouse.net";
      author = "Phil Hargett";
      homepage = "http://github.com/hargettp/uid";
      url = "";
      synopsis = "Simple unique identifier datatype, serializable and encodable as base32";
      description = "A simple unique identiier, serializable to binary and JSON, and since\nbase32 is a primary encoding, renders in URLs without any further encoding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.dataenc)
          (hsPkgs.text)
          (hsPkgs.uuid)
          ];
        };
      };
    }