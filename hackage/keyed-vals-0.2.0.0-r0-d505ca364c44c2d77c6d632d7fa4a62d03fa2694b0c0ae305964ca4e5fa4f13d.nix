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
      identifier = { name = "keyed-vals"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "https://github.com/adetokunbo/keyed-vals#readme";
      url = "";
      synopsis = "An abstract Handle for accessing collections in stores like Redis";
      description = "Provides an abstract [Handle](https://jaspervdj.be/posts/2018-03-08-handle-pattern.html) for\naccessing stored key-value collections, and useful combinators that use Handle.\n\nOne implementation of Handle accesses collections in [Redis](https://hackage.haskell.org/package/keyed-vals-redis) other backends are possible.\n\nkeyed-vals also provides a typed interface to the storage backend that allows the\npath in the storage backend to be declaratively linked to the types of data\nstored via a straightforward typeclass declaration.\n\nRead this [short example](https://github.com/adetokunbo/keyed-vals/tree/main/keyed-vals#example)\nfor an introduction its usage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."redis-glob" or (errorHandler.buildDepError "redis-glob"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }