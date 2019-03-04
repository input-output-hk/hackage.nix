{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs"; version = "0.7.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs#readme";
      url = "";
      synopsis = "Fast Entity-Component-System library for game programming";
      description = "The Entity-Component-System architecture provides an imperative game programming paradigm that tackles many of the shortcomings of more OO-oriented approaches.\napecs is a type-driven ECS library, that leverages strong typing for an expressive DSL that compiles into fast game code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
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