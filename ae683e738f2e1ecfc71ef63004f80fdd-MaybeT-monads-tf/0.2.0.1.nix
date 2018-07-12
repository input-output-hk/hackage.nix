{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MaybeT-monads-tf";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Ben Millwood";
        maintainer = "Ben Millwood <haskell@benmachine.co.uk>";
        author = "Ben Millwood <haskell@benmachine.co.uk>";
        homepage = "";
        url = "";
        synopsis = "MaybeT monad transformer compatible with monads-tf (deprecated)";
        description = "Support for computations with failures. This is a fork of the MaybeT\npackage by Eric Kidd, but compatible with the type-family based monad\nclasses of the monads-tf package.\n\nThis package is deprecated: the MaybeT transformer exists in the\ntransformers package nowadays, and the only advantage this package\nprovides over that one is the presence of a MonadFix instance, but\nit's incorrect anyway.";
        buildType = "Simple";
      };
      components = {
        "MaybeT-monads-tf" = {
          depends  = [
            hsPkgs.base
            hsPkgs.monads-tf
            hsPkgs.transformers
          ];
        };
      };
    }