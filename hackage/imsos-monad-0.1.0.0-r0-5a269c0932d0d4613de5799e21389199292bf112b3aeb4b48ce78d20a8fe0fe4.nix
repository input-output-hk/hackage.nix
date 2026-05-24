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
      specVersion = "3.0";
      identifier = { name = "imsos-monad"; version = "0.1.0.0"; };
      license = "GPL-2.0-or-later";
      copyright = "";
      maintainer = "ltvanbinsbergen@acm.org";
      author = "L. Thomas van Binsbergen";
      homepage = "https://haskell-omelet.org";
      url = "";
      synopsis = "MonadIMSOS combines State, Error, Reader and Writer.";
      description = "A Monad providing an abstraction based on the Implicitly Modular Structural Operational Semantics (I-MSOS) approach to specifying programming language semantics";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }