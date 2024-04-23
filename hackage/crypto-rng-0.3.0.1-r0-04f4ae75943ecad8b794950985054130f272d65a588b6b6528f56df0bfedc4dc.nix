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
      identifier = { name = "crypto-rng"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Mikhail Glushenkov <mikhail.glushenkov@scrive.com>,\nJonathan Jouty <jonathan@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/crypto-rng";
      url = "";
      synopsis = "Cryptographic random number generator.";
      description = "Convenient wrapper for the source of random bytes\nprovided by the @entropy@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
        ];
        buildable = true;
      };
    };
  }