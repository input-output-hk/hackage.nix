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
      identifier = { name = "zeromq4-conduit"; version = "0.1.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "2017 Andy Georges";
      maintainer = "Andy Georges";
      author = "Nicolas Trangez (2012), Andy Georges (2017)";
      homepage = "https://github.com/itkovian/zeromq4-conduit#readme";
      url = "";
      synopsis = "Conduit wrapper around zeromq4-haskell";
      description = "Conduit wrapper around zeromq4-haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "zeromq4-conduit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zeromq4-conduit" or (errorHandler.buildDepError "zeromq4-conduit"))
          ];
          buildable = true;
        };
      };
    };
  }