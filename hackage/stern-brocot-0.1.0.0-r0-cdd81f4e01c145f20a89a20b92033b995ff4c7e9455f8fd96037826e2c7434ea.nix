{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stern-brocot"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Positive rational numbers represented as paths in the Stern-Brocot tree";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.alg) (hsPkgs.base) (hsPkgs.universe-base) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.universe-base)
            (hsPkgs.stern-brocot)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.stern-brocot) ];
          };
        };
      };
    }