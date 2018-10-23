{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apecs";
        version = "0.5.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs#readme";
      url = "";
      synopsis = "Fast ECS framework for game programming";
      description = "Entity-Component-System frameworks provide a game programming paradigm that tackles many of the shortcomings of a more OO-oriented approach.\napecs is a type-driven ECS, that leverages strong typing for an expressive DSL that turns into fast game code.";
      buildType = "Simple";
    };
    components = {
      "apecs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "apecs-test" = {
          depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.apecs)
            (hsPkgs.criterion)
            (hsPkgs.linear)
          ];
        };
      };
    };
  }