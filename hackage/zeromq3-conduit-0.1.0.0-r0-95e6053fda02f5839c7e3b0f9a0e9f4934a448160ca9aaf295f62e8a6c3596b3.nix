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
      specVersion = "1.8";
      identifier = { name = "zeromq3-conduit"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "Copyright (c) 2012, Nicolas Trangez";
      maintainer = "ikke@nicolast.be";
      author = "Nicolas Trangez";
      homepage = "https://github.com/NicolasT/zeromq3-conduit";
      url = "";
      synopsis = "Conduit bindings for zeromq3-haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."zeromq3-haskell" or (errorHandler.buildDepError "zeromq3-haskell"))
          ];
        buildable = true;
        };
      };
    }