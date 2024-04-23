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
      specVersion = "1.2";
      identifier = { name = "monadfibre"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "";
      url = "";
      synopsis = "Monad Transformer to provide Choice and Parallelism.";
      description = "This package defines a Monad Transformer called @Fibre@,\nwhich provides the underlying monad with Choice and Parallelism.\nAlso included is a Class called @MonadBi@ which acts as a superset\nof @MonadTrans@, and provides @raise@ analogous to @lift@ as well\nas @lower@, which goes the other way.\nNatural instances are provided for many Monad Transformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }