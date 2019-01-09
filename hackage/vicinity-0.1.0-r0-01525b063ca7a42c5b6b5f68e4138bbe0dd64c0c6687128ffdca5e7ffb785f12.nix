{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { slow = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "vicinity"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/vicinity#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on Github at <https://github.com/andrewthad/vicinity#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.semigroups) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vicinity)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.containers)
            ];
          };
        "doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.vicinity) (hsPkgs.doctest) ];
          };
        };
      };
    }