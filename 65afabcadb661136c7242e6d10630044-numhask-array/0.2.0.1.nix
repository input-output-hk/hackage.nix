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
      specVersion = "1.18";
      identifier = {
        name = "numhask-array";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/numhask-array#readme";
      url = "";
      synopsis = "n-dimensional arrays";
      description = "n-dimensional arrays founded on numhask.";
      buildType = "Simple";
    };
    components = {
      "numhask-array" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.adjunctions)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.dimensions)
          (hsPkgs.distributive)
          (hsPkgs.numhask-prelude)
          (hsPkgs.protolude)
          (hsPkgs.singletons)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.numhask-array)
            (hsPkgs.numhask-prelude)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }