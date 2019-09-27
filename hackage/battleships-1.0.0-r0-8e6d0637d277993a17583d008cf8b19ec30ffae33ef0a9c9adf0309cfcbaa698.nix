let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."yesod" or (buildDepError "yesod"))
          (hsPkgs."yesod-core" or (buildDepError "yesod-core"))
          (hsPkgs."yesod-static" or (buildDepError "yesod-static"))
          (hsPkgs."yesod-routes" or (buildDepError "yesod-routes"))
          (hsPkgs."hamlet" or (buildDepError "hamlet"))
          (hsPkgs."shakespeare-text" or (buildDepError "shakespeare-text"))
          (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
          (hsPkgs."wai-logger" or (buildDepError "wai-logger"))
          (hsPkgs."cookie" or (buildDepError "cookie"))
          (hsPkgs."hjsmin" or (buildDepError "hjsmin"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
          (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."fast-logger" or (buildDepError "fast-logger"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."SimpleAES" or (buildDepError "SimpleAES"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."word8" or (buildDepError "word8"))
          (hsPkgs."shakespeare-js" or (buildDepError "shakespeare-js"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ (pkgs.lib).optionals (flags.library-only) [
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "main.fcgi" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."battleships" or (buildDepError "battleships"))
            (hsPkgs."yesod" or (buildDepError "yesod"))
            ] ++ (if flags.dev
            then [ (hsPkgs."warp" or (buildDepError "warp")) ]
            else [
              (hsPkgs."wai-handler-fastcgi" or (buildDepError "wai-handler-fastcgi"))
              ]);
          buildable = if flags.library-only then false else true;
          };
        "img-gen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."battleships" or (buildDepError "battleships"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
            (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "aibenchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."battleships" or (buildDepError "battleships"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "key-gen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
            ];
          buildable = if flags.library-only then false else true;
          };
        };
      };
    }