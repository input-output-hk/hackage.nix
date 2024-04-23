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
      specVersion = "1.2";
      identifier = { name = "hs2bf"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "xanxys@gmail.com";
      author = "Daiki Handa";
      homepage = "http://www.xanxys.net/hs2bf/";
      url = "";
      synopsis = "Haskell to Brainfuck compiler";
      description = "Proof of concept implementation of Haskell to Brainfuck compiler.\nYou can find examples of compilable codes at <http://www.xanxys.net/public/hs2bf-demo/>";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hs2bf" = {
          depends = [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          ];
          buildable = true;
        };
      };
    };
  }