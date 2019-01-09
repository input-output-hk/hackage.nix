{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pretty-relative-time"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/pretty-relative-time#readme";
      url = "";
      synopsis = "Pretty relative time";
      description = "Please see the README on Github at <https://github.com/NorfairKing/pretty-relative-time#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.validity)
          (hsPkgs.validity-time)
          ];
        };
      tests = {
        "pretty-relative-time-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-time)
            (hsPkgs.hspec)
            (hsPkgs.pretty-relative-time)
            (hsPkgs.time)
            (hsPkgs.validity)
            (hsPkgs.validity-time)
            ];
          };
        };
      };
    }