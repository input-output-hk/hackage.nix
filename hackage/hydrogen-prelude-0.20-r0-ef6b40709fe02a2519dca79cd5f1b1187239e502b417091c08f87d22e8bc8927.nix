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
    flags = { explicittext = true; };
    package = {
      specVersion = "1.14";
      identifier = { name = "hydrogen-prelude"; version = "0.20"; };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "http://scravy.de/hydrogen-prelude/";
      url = "";
      synopsis = "Hydrogen Prelude";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hydrogen-multimap" or (errorHandler.buildDepError "hydrogen-multimap"))
          (hsPkgs."hydrogen-version" or (errorHandler.buildDepError "hydrogen-version"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).le "7.6") [
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.6") (hsPkgs."binary" or (errorHandler.buildDepError "binary"));
        buildable = true;
        };
      };
    }