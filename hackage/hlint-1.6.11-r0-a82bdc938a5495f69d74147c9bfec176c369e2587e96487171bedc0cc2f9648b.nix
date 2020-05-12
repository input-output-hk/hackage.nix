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
    flags = { threaded = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hlint"; version = "1.6.11"; };
      license = "LicenseRef-GPL";
      copyright = "Neil Mitchell 2006-2009";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/hlint/";
      url = "";
      synopsis = "Source code suggestions";
      description = "HLint gives suggestions on how to improve your source code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      };
    }