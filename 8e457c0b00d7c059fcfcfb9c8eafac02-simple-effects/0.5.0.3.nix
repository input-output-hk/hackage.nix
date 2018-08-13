{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simple-effects";
        version = "0.5.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://gitlab.com/LukaHorvat/simple-effects";
      url = "";
      synopsis = "A simple effect system that integrates with MTL";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "simple-effects" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.interlude-l)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.list-t)
          (hsPkgs.lens)
        ];
      };
      benchmarks = {
        "bench-effects" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.interlude-l)
            (hsPkgs.lens)
            (hsPkgs.simple-effects)
          ];
        };
      };
    };
  }