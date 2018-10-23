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
        name = "validity-time";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for time";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "validity-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.validity)
        ];
      };
    };
  }