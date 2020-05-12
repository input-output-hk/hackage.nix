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
      specVersion = "1.8";
      identifier = { name = "Fungi"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "https://github.com/thomaseding/fungi";
      url = "";
      synopsis = "Funge-98 interpreter written in Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fungi" = {
          depends = [
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ListZipper" or (errorHandler.buildDepError "ListZipper"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }