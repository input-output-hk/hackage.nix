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
        name = "genvalidity-aeson";
        version = "0.2.0.2";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for aeson";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-scientific)
          (hsPkgs.genvalidity-text)
          (hsPkgs.genvalidity-unordered-containers)
          (hsPkgs.genvalidity-vector)
          (hsPkgs.validity)
          (hsPkgs.validity-aeson)
        ];
      };
      tests = {
        "genvalidity-aeson-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-aeson)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }