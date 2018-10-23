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
        name = "validity-unordered-containers";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for unordered-containers";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "validity-unordered-containers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.validity)
        ];
      };
    };
  }