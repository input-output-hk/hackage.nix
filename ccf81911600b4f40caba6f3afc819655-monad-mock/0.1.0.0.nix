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
        name = "monad-mock";
        version = "0.1.0.0";
      };
      license = "ISC";
      copyright = "2017 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "Alexis King <lexi.lambda@gmail.com>";
      homepage = "https://github.com/cjdev/monad-mock#readme";
      url = "";
      synopsis = "A monad transformer for mocking mtl-style typeclasses";
      description = "This package provides a monad transformer that helps create “mocks” of\n@mtl@-style typeclasses, intended for use in unit tests. A mock can be\nexecuted by providing a sequence of expected monadic calls and their results,\nand the mock will verify that the computation conforms to the expectation.\n\nFor more information, see the module documentation for \"Control.Monad.Mock\".";
      buildType = "Simple";
    };
    components = {
      "monad-mock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "monad-stub-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monad-mock)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }