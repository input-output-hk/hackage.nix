{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "feature-flipper"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Todd Mohney";
      maintainer = "toddmohney@gmail.com";
      author = "Todd Mohney";
      homepage = "https://github.com/toddmohney/feature-flipper#readme";
      url = "";
      synopsis = "A minimally obtrusive feature flag library";
      description = "A minimally obtrusive feature flag library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          ];
        };
      exes = {
        "environment-config" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.feature-flipper)
            (hsPkgs.mtl)
            ];
          };
        };
      tests = {
        "feature-flipper-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.feature-flipper)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }