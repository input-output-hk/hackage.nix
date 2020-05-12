{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "writer-cps-transformers"; version = "0.1.1.4"; };
      license = "BSD-3-Clause";
      copyright = "2016 Daniel Mendler";
      maintainer = "mail@daniel-mendler.de";
      author = "Andy Gill, Ross Paterson, Daniel Mendler";
      homepage = "https://github.com/minad/writer-cps-transformers#readme";
      url = "";
      synopsis = "WriteT and RWST monad transformers";
      description = "The WriterT and RWST monad transformers provided by writer-cps-transformers are written in continuation passing style and avoid the space-leak problem of the traditional Control.Monad.Trans.Writer.Strict and Control.Monad.Trans.Writer.Lazy. The corresponding MTL class instances are in the package writer-cps-mtl (<http://hackage.haskell.org/package/writer-cps-mtl>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }