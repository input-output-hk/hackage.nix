{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "usa-holidays"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Kyung Mo Kweon";
      maintainer = "kkweon@gmail.com";
      author = "Kyung Mo Kweon";
      homepage = "https://github.com/kkweon/usa-holidays#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/kkweon/usa-holidays#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.time) ]; };
      tests = {
        "usa-holidays-dodctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.time)
            (hsPkgs.usa-holidays)
            ];
          };
        "usa-holidays-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.time)
            (hsPkgs.usa-holidays)
            ];
          };
        };
      };
    }