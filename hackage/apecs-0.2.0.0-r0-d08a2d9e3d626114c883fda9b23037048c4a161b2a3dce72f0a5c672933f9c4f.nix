{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "apecs";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs#readme";
      url = "";
      synopsis = "A fast ECS for game engine programming";
      description = "A fast ECS for game engine programming";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.apecs)
            (hsPkgs.linear)
          ];
        };
        "rts" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.apecs)
            (hsPkgs.sdl2)
            (hsPkgs.random)
            (hsPkgs.linear)
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