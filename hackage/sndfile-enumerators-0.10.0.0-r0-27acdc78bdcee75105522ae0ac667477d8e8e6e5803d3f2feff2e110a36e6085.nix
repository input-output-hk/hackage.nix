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
      identifier = { name = "sndfile-enumerators"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John W. Lato, jwlato@gmail.com";
      author = "John W. Lato, jwlato@gmail.com";
      homepage = "http://www.tiresiaspress.us/haskell/sndfile-enumerators";
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
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."iteratee" or (errorHandler.buildDepError "iteratee"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."listlike-instances" or (errorHandler.buildDepError "listlike-instances"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."word24" or (errorHandler.buildDepError "word24"))
          ];
        buildable = true;
        };
      };
    }