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
      specVersion = "1.6";
      identifier = {
        name = "concurrent-sa";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Louis Wasserman <wasserman.louis@gmail.com>";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Concurrent simulated annealing system.";
      description = "An extremely lightweight system for concurrent simulated annealing.";
      buildType = "Simple";
    };
    components = {
      "concurrent-sa" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }