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
        name = "validity-uuid";
        version = "0.1.0.2";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for uuid";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "validity-uuid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uuid)
          (hsPkgs.validity)
        ];
      };
    };
  }