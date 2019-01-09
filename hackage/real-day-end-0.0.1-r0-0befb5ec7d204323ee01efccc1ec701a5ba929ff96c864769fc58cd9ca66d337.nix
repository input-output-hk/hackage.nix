{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "real-day-end"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/s9gf4ult/real-day-end";
      url = "";
      synopsis = "Tiny library to calculate date considering when your day realy ends";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.time) ]; };
      tests = {
        "real-day-end-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.real-day-end)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.time)
            ];
          };
        };
      };
    }