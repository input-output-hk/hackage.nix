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
      specVersion = "1.4";
      identifier = { name = "bogre-banana"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "David Michael Taro Eichmann";
      maintainer = "EichmannD at gmail dot com";
      author = "David Eichmann";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Boge-Banana is a 3D game engine using the Reactive-Banana FRP library, the HOIS library for input, and the HOGRE library for output. An introductory tutorial is avilable at http:\\/\\/www.haskell.org\\/haskellwiki\\/User_talk:DavidE.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."reactive-banana" or (errorHandler.buildDepError "reactive-banana"))
          (hsPkgs."hois" or (errorHandler.buildDepError "hois"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."hogre" or (errorHandler.buildDepError "hogre"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        buildable = true;
      };
      exes = {
        "bogre-banana-snake" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hois" or (errorHandler.buildDepError "hois"))
            (hsPkgs."hogre" or (errorHandler.buildDepError "hogre"))
          ];
          buildable = true;
        };
      };
    };
  }