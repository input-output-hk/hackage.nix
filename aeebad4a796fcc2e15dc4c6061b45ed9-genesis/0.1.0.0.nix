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
        name = "genesis";
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
      "genesis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.envparse)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.monad-control)
          (hsPkgs.monad-io-adapter)
          (hsPkgs.monad-logger)
          (hsPkgs.monad-persist)
          (hsPkgs.persistent)
          (hsPkgs.persistent-postgresql)
          (hsPkgs.persistent-template)
          (hsPkgs.resource-pool)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-conversions)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "genesis-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.genesis)
            (hsPkgs.hspec)
            (hsPkgs.monad-control)
            (hsPkgs.monad-logger)
            (hsPkgs.monad-persist)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.persistent-template)
            (hsPkgs.text)
          ];
        };
      };
    };
  }