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
        name = "naperian";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Aaron Vargo 2017";
      maintainer = "Aaron Vargo <fpfundamentalist@gmail.com>";
      author = "Aaron Vargo";
      homepage = "https://github.com/aaronvargo/naperian#readme";
      url = "";
      synopsis = "Efficient representable functors";
      description = "See the readme at <https://github.com/aaronvargo/naperian#readme>";
      buildType = "Simple";
    };
    components = {
      "naperian" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.distributive)
          (hsPkgs.adjunctions)
          (hsPkgs.transformers)
          (hsPkgs.streams)
          (hsPkgs.free)
          (hsPkgs.comonad)
        ];
      };
    };
  }