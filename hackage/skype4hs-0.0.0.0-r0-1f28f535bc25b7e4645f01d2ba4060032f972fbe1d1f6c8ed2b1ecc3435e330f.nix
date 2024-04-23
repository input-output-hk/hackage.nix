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
    flags = { x11 = false; carbon = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "skype4hs"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "emonkak@gmail.com";
      author = "Shota Nozaki";
      homepage = "https://github.com/emonkak/haskell-skype";
      url = "";
      synopsis = "Skype Desktop API binding for Haskell";
      description = "Skype Desktop API binding for Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
        ] ++ pkgs.lib.optional (system.isLinux || system.isFreebsd || flags.x11) (hsPkgs."X11" or (errorHandler.buildDepError "X11"));
        frameworks = pkgs.lib.optional (system.isOsx || flags.carbon) (pkgs."Carbon" or (errorHandler.sysDepError "Carbon"));
        buildable = true;
      };
    };
  }