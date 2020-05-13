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
    flags = { opengl = true; webgl = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ombra"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2014-2017 Luca Prezzavento";
      maintainer = "ziocroc@gmail.com";
      author = "Luca Prezzavento";
      homepage = "https://github.com/ziocroc/Ombra";
      url = "";
      synopsis = "Render engine.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."MemoTrie" or (errorHandler.buildDepError "MemoTrie"))
          ] ++ (pkgs.lib).optional (flags.opengl && !flags.webgl) (hsPkgs."gl" or (errorHandler.buildDepError "gl"))) ++ (pkgs.lib).optional (flags.webgl) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"));
        buildable = true;
        };
      };
    }