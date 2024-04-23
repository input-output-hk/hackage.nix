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
      identifier = { name = "sirkel"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Morten Olsen Lysgaard <morten@lysgaard.no>";
      author = "Morten Olsen Lysgaard <morten@lysgaard.no>";
      homepage = "";
      url = "";
      synopsis = "Sirkel, a Chord DHT";
      description = "An implementation of the Chord DHT with replication and faulth tolerance";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."remote" or (errorHandler.buildDepError "remote"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
        ];
        buildable = true;
      };
    };
  }