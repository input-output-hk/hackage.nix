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
        name = "pipes-category";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan";
      homepage = "https://github.com/louispan/pipes-category#readme";
      url = "";
      synopsis = "Allows instances for Category, Arrow and ArrowChoice for Pipes.";
      description = "Allows instances for Category, Arrow and ArrowChoice for Pipes.";
      buildType = "Simple";
    };
    components = {
      "pipes-category" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.pipes-extras)
        ];
      };
      tests = {
        "pipes-category-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pipes)
            (hsPkgs.pipes-category)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }