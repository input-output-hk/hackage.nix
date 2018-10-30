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
        name = "genvalidity-containers";
        version = "0.2.0.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for containers";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.containers)
          (hsPkgs.genvalidity)
          (hsPkgs.validity)
          (hsPkgs.validity-containers)
        ];
      };
      tests = {
        "genvalidity-containers-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-containers)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }