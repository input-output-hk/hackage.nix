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
      specVersion = "1.1.4";
      identifier = { name = "hoogle"; version = "4.0.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "Neil Mitchell 2004-2008";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://www.haskell.org/hoogle/";
      url = "";
      synopsis = "Haskell API Search";
      description = "Hoogle is a Haskell API search engine, which allows you to\nsearch many standard Haskell libraries by either function name,\nor by approximate type signature.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hoogle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }