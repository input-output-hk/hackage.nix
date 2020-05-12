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
      specVersion = "1.6";
      identifier = { name = "opensoundcontrol-ht"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskell OpenSoundControl utilities";
      description = "Some additional modules I use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* a @Transport@ handle type for writing to files\n\n* a @Transport@ monad type for writing to a bytestring without IO.\n\nAlso see the supercollider-ht package which uses this one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }