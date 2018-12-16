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
        name = "genvalidity-text";
        version = "0.3.1.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for Text";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.validity)
          (hsPkgs.validity-text)
          (hsPkgs.genvalidity)
          (hsPkgs.text)
          (hsPkgs.array)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "genvalidity-text-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-text)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }