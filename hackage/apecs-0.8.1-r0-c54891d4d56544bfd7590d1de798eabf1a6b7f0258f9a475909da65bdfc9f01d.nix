{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs#readme";
      url = "";
      synopsis = "Fast Entity-Component-System library for game programming";
      description = "apecs is a fast, type-driven Entity-Component-System library for game programming.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "apecs-test" = {
          depends = [
            (hsPkgs.apecs)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.linear)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "apecs-bench" = {
          depends = [
            (hsPkgs.apecs)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.linear)
            ];
          };
        };
      };
    }