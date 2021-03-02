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
      specVersion = "1.0";
      identifier = { name = "hackage2hwn"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart ";
      homepage = "http://code.haskell.org/~dons/code/hackage2hwn";
      url = "";
      synopsis = "Convert Hackage RSS feeds to wiki format for publishing on Haskell.org";
      description = "Convert Hackage RSS feeds to wiki format for publishing on Haskell.org";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackage2hwn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            ];
          buildable = true;
          };
        };
      };
    }