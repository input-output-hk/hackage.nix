{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bench = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "piped"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Scott Sadler";
      maintainer = "example@example.com";
      author = "Scott Sadler";
      homepage = "https://github.com/ssadler/piped#readme";
      url = "";
      synopsis = "Conduit with a smaller core";
      description = "Please see the README on GitHub at <https://github.com/ssadler/piped#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.mtl) ]; };
      exes = {
        "piped-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bench-show)
            (hsPkgs.conduit)
            (hsPkgs.gauge)
            (hsPkgs.mtl)
            (hsPkgs.piped)
            (hsPkgs.split)
            ];
          };
        };
      tests = {
        "piped-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.gauge)
            (hsPkgs.microlens-platform)
            (hsPkgs.mtl)
            (hsPkgs.piped)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }