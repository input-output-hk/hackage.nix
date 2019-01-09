{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ival"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Target Corporation";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Intervals";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.alg) (hsPkgs.base) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.alg)
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.ival)
            ];
          };
        };
      };
    }