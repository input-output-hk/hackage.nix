{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "monad-io-adapter";
        version = "0.1.0.0";
      };
      license = "ISC";
      copyright = "2017 CJ Affiliate by Conversant";
      maintainer = "Alexis King <lexi.lambda@gmail.com>";
      author = "Alexis King <lexi.lambda@gmail.com>";
      homepage = "https://github.com/cjdev/monad-io-adapter#readme";
      url = "";
      synopsis = "Adapters between MonadIO and MonadBase IO.";
      description = "This package provides utilities for converting between computations\nparameterized via two different typeclasses 'MonadIO' and 'MonadBase', both of\nwhich can be used to abstract over monad transformer stacks with 'IO' at the\nbase. Unfortunately, both classes are frequently used in the Haskell\necosystem, since they have minor differences.\n\nDue to these typeclasses being unrelated, it’s not entirely uncommon to end up\nwith type signatures like @('MonadIO' m, 'MonadBaseControl' 'IO' m) => ...@,\nwhich are a little silly, since @'MonadBaseControl' 'IO'@ really includes all\nthe power of 'MonadIO'.\n\nTo help alleviate this problem, this package provides a set of utilities for\nconverting between the two constraints in situations where possible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "monad-io-adapter-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.monad-io-adapter)
            (hsPkgs.transformers-base)
          ];
        };
      };
    };
  }