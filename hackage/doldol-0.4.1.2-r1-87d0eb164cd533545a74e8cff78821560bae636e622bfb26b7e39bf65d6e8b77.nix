{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "doldol"; version = "0.4.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 YongJoon Joe";
      maintainer = "developer+doldol@quietjoon.net";
      author = "YongJoon Joe";
      homepage = "https://github.com/QuietJoon/doldol/";
      url = "";
      synopsis = "Flag packer & handler for flaggable data";
      description = "Please see the README on GitHub at <https://github.com/QuietJoon/doldol#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "doldol-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doldol)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      };
    }