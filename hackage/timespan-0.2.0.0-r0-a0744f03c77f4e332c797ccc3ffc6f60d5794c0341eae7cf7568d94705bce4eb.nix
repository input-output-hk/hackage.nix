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
        name = "timespan";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2016 Alexander Thiemann";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/timespan#readme";
      url = "";
      synopsis = "Useful timespan datatype and functions";
      description = "A data type for time spans with some useful utility functions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
    };
  }