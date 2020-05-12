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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "sndfile-enumerators"; version = "0.8.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "http://jwlato.webfactional.com/haskell/sndfile-enumerators";
      url = "";
      synopsis = "Audio file reading/writing";
      description = "encode and decode soundfiles using Iteratees.\nAudio files may be read or written, with classes and\ndata structures to facilitate conversion between different\nformats.  Currently only wave format is supported.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."word24" or (errorHandler.buildDepError "word24"))
          (hsPkgs."mutable-iter" or (errorHandler.buildDepError "mutable-iter"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          ];
        buildable = true;
        };
      };
    }