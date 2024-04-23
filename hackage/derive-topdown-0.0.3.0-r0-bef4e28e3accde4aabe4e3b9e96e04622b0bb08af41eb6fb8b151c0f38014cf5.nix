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
      identifier = { name = "derive-topdown"; version = "0.0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) songzh";
      maintainer = "songzh <Haskell.Zhang.Song@hotmail.com>";
      author = "songzh <Haskell.Zhang.Song@hotmail.com>";
      homepage = "https://github.com/HaskellZhangSong/derive-topdown                   ";
      url = "";
      synopsis = "Help Haskellers derive class instances for composited data types.";
      description = "This package will make it easier to derive class instance for complex composited data types by using Template Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."th-expand-syns" or (errorHandler.buildDepError "th-expand-syns"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }