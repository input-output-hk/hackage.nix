{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "genvalidity-text"; version = "0.6.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2019 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
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
          (hsPkgs.QuickCheck)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.text)
          (hsPkgs.validity)
          (hsPkgs.validity-text)
          ];
        };
      tests = {
        "genvalidity-text-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-text)
            (hsPkgs.hspec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }