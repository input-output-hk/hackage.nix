{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs#readme";
      url = "";
      synopsis = "Fast ECS framework for game programming";
      description = "Apecs is an Entity Component System framework, suitable for high-performance game programming.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.async)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "apecs-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.apecs)
            (hsPkgs.QuickCheck)
            (hsPkgs.criterion)
            (hsPkgs.linear)
            (hsPkgs.containers)
            (hsPkgs.vector)
            ];
          };
        };
      benchmarks = {
        "apecs-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.apecs)
            (hsPkgs.criterion)
            (hsPkgs.linear)
            ];
          };
        };
      };
    }