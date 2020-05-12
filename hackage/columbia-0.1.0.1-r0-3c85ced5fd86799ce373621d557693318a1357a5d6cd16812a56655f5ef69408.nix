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
      identifier = { name = "columbia"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jacinablackbox@yahoo.com";
      author = "James Candy";
      homepage = "";
      url = "";
      synopsis = "Enhanced serialization for media that support seeking.";
      description = "Libraries such as binary and cereal support sequential reading and writing but do not rely on any further operations. Many media support seeking in files as well. This library implements a file format that supports random access to data entities by seeking.\n\nThis library also uses the syb-with-class library to streamline implementation of serializers for various data entities, so that you don't have to write much boilerplate ;).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."data-endian" or (errorHandler.buildDepError "data-endian"))
          ];
        buildable = true;
        };
      };
    }