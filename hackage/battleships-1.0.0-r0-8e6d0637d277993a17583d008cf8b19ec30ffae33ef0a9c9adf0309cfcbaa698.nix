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
    flags = { dev = false; library-only = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "battleships"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thorand@cs.uni-bonn.de";
      author = "Meike Grewing, Lukas Heidemann, Fabian Thorand, Fabian Zaiser";
      homepage = "https://github.com/zrho/afp";
      url = "";
      synopsis = "A web-based implementation of battleships including an AI opponent.";
      description = "This package provides a web-based implementation of the popular\nbattleships game, developed over the course of a practical functional\nprogramming class at the University of Bonn (<http://www.iai.uni-bonn.de/~jv/teaching/afp13/>).\nAlongside with the classical gameplay against an AI opponent, a game mode\nis provided in which players may move their undamaged ships.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          (hsPkgs."yesod-routes" or (errorHandler.buildDepError "yesod-routes"))
          (hsPkgs."hamlet" or (errorHandler.buildDepError "hamlet"))
          (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai-logger" or (errorHandler.buildDepError "wai-logger"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."SimpleAES" or (errorHandler.buildDepError "SimpleAES"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."shakespeare-js" or (errorHandler.buildDepError "shakespeare-js"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ] ++ pkgs.lib.optionals (flags.library-only) [
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "main.fcgi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."battleships" or (errorHandler.buildDepError "battleships"))
            (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          ] ++ (if flags.dev
            then [ (hsPkgs."warp" or (errorHandler.buildDepError "warp")) ]
            else [
              (hsPkgs."wai-handler-fastcgi" or (errorHandler.buildDepError "wai-handler-fastcgi"))
            ]);
          buildable = if flags.library-only then false else true;
        };
        "img-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."battleships" or (errorHandler.buildDepError "battleships"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = if flags.library-only then false else true;
        };
        "aibenchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."battleships" or (errorHandler.buildDepError "battleships"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          ];
          buildable = if flags.library-only then false else true;
        };
        "key-gen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
          ];
          buildable = if flags.library-only then false else true;
        };
      };
    };
  }