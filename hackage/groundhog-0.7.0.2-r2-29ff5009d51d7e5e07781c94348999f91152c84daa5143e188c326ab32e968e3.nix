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
      specVersion = "1.6";
      identifier = { name = "groundhog"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "http://github.com/lykahb/groundhog";
      url = "";
      synopsis = "Type-safe datatype-database mapping library.";
      description = "This library maps your datatypes to a relational model, in a way similar to what ORM libraries do in object-oriented programming. The mapping can be configured to work with almost any schema. Groundhog supports schema migrations, composite keys, advanced expressions in queries, and much more. See tutorial <https://www.fpcomplete.com/user/lykahb/groundhog> and examples <https://github.com/lykahb/groundhog/tree/master/examples> on GitHub.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }