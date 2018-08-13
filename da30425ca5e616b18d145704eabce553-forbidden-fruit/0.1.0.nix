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
        name = "forbidden-fruit";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "minpou.primer@gmail.com";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/forbidden-fruit";
      url = "";
      synopsis = "A library accelerates imperative style programming.";
      description = "A library accelerates imperative style programming.";
      buildType = "Simple";
    };
    components = {
      "forbidden-fruit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.control-monad-loop)
          (hsPkgs.hashtables)
          (hsPkgs.hashable)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.control-monad-loop)
            (hsPkgs.hashtables)
            (hsPkgs.hashable)
            (hsPkgs.vector)
            (hsPkgs.primitive)
          ];
        };
      };
    };
  }