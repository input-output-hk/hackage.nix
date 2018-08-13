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
        name = "genesis-test";
        version = "0.1.0.0";
      };
      license = "ISC";
      copyright = "2017 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "";
      homepage = "https://github.com/cjdev/genesis#readme";
      url = "";
      synopsis = "Opinionated bootstrapping for Haskell web services.";
      description = "Opinionated bootstrapping for Haskell web services.";
      buildType = "Simple";
    };
    components = {
      "genesis-test" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.genesis)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-persist)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "genesis-test-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.envparse)
            (hsPkgs.genesis)
            (hsPkgs.genesis-test)
            (hsPkgs.hspec)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-persist)
            (hsPkgs.persistent-template)
            (hsPkgs.text)
          ];
        };
      };
    };
  }