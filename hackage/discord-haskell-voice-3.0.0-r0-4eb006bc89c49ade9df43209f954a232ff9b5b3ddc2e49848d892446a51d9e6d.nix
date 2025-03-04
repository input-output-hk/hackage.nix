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
    flags = { use-crypton = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "discord-haskell-voice"; version = "3.0.0"; };
      license = "MIT";
      copyright = "Yuto Takano <moa17stock@gmail.com>, discord-haskell-voice Contributors";
      maintainer = "Yuto Takano <moa17stock@gmail.com>";
      author = "Yuto Takano <moa17stock@gmail.com>";
      homepage = "https://github.com/yutotakano/discord-haskell-voice";
      url = "";
      synopsis = "Voice support for discord-haskell.";
      description = "Supplementary library to discord-haskell. See the project README on GitHub for more information. <https://github.com/yutotakano/discord-haskell-voice>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."BoundedChan" or (errorHandler.buildDepError "BoundedChan"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."discord-haskell" or (errorHandler.buildDepError "discord-haskell"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."opus" or (errorHandler.buildDepError "opus"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."wuss" or (errorHandler.buildDepError "wuss"))
        ] ++ (if flags.use-crypton
          then [
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."crypton-box" or (errorHandler.buildDepError "crypton-box"))
          ]
          else [
            (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.6") (hsPkgs."discord-haskell" or (errorHandler.buildDepError "discord-haskell"));
        buildable = true;
      };
      exes = {
        "basic-music-bot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."discord-haskell" or (errorHandler.buildDepError "discord-haskell"))
            (hsPkgs."discord-haskell-voice" or (errorHandler.buildDepError "discord-haskell-voice"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
        "join-all-on-start" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."discord-haskell" or (errorHandler.buildDepError "discord-haskell"))
            (hsPkgs."discord-haskell-voice" or (errorHandler.buildDepError "discord-haskell-voice"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }