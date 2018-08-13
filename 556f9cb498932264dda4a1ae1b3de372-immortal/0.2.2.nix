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
        name = "immortal";
        version = "0.2.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/immortal";
      url = "";
      synopsis = "Spawn threads that never die (unless told to do so)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "immortal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lifted-base)
          (hsPkgs.transformers-base)
          (hsPkgs.monad-control)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.immortal)
            (hsPkgs.transformers)
            (hsPkgs.stm)
            (hsPkgs.lifted-base)
          ];
        };
      };
    };
  }