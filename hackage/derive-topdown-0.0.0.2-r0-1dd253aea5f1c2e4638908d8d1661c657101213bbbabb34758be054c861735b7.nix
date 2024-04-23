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
      specVersion = "1.10";
      identifier = { name = "derive-topdown"; version = "0.0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Haskell.Zhang.Song@hotmail.com";
      author = "songzh";
      homepage = "https://github.com/HaskellZhangSong/derive-topdown";
      url = "";
      synopsis = "This library will help you generate Haskell empty Generic instances  and deriving type instances from the top automatically to the bottom for composited data types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."template-haskell-util" or (errorHandler.buildDepError "template-haskell-util"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
        ];
        buildable = true;
      };
    };
  }