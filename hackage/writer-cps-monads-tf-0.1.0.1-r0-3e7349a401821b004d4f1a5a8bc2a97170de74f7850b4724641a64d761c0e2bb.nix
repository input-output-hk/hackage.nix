{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "writer-cps-monads-tf";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Mendler";
      maintainer = "mail@daniel-mendler.de";
      author = "Andy Gill, Ross Paterson, Daniel Mendler";
      homepage = "https://github.com/minad/writer-cps-monads-tf#readme";
      url = "";
      synopsis = "MonadWriter orphan instances for writer-cps-transformers";
      description = "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. See also (<http://hackage.haskell.org/package/writer-cps-transformers>).";
      buildType = "Simple";
    };
    components = {
      "writer-cps-monads-tf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.writer-cps-transformers)
        ];
      };
    };
  }