{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "genvalidity-path"; version = "0.3.0.2"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com,\nnick.van.den.broeck666@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for Path";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.path)
          (hsPkgs.validity-path)
          ];
        };
      tests = {
        "genvalidity-path-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-path)
            (hsPkgs.hspec)
            (hsPkgs.path)
            ];
          };
        };
      benchmarks = {
        "genvalidity-path-bench" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-path)
            (hsPkgs.path)
            ];
          };
        };
      };
    }