{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "compositional-data"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 M Farkas-Dyck";
      maintainer = "strake888@gmail.com";
      author = "M Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Compositional Data Types";
      description = "Modular data types defined as fixpoints, and term homomorphisms, like compdata package but with cleaner API";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctor)
          (hsPkgs.category)
          (hsPkgs.transformers)
          (hsPkgs.util)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.c)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [ (hsPkgs.base) (hsPkgs.criterion) (hsPkgs.c) ];
          };
        };
      };
    }