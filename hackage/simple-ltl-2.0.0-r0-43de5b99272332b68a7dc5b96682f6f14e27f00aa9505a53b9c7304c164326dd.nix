{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "simple-ltl"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://www.github.com/jwiegley/simple-ltl";
      url = "";
      synopsis = "A simple LTL checker";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.deepseq) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.simple-ltl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [ (hsPkgs.base) (hsPkgs.simple-ltl) (hsPkgs.criterion) ];
          };
        };
      };
    }