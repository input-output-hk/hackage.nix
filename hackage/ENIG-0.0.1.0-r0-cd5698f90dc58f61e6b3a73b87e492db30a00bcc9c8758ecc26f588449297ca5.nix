{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ENIG"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 YongJoon Joe";
      maintainer = "developer+ENIG@quietjoon.net";
      author = "YongJoon Joe";
      homepage = "https://github.com/QuietJoon/ENIG#readme";
      url = "";
      synopsis = "Auto Korean conjugator/adjustor/adopter/converter";
      description = "Please see the README on GitHub at <https://github.com/QuietJoon/ENIG#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.unicode-transforms)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "ENIG-test" = {
          depends = [
            (hsPkgs.ENIG)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.text)
            (hsPkgs.unicode-transforms)
            ];
          };
        };
      };
    }