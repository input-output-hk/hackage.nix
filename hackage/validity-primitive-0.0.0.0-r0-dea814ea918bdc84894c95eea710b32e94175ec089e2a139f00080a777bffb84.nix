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
        name = "validity-primitive";
        version = "0.0.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for primitive";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "validity-primitive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.validity)
        ];
      };
    };
  }