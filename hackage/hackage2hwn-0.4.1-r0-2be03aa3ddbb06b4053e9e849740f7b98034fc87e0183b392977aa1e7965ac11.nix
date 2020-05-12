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
      specVersion = "0";
      identifier = { name = "hackage2hwn"; version = "0.4.1"; };
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
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            (hsPkgs."download" or (errorHandler.buildDepError "download"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            ];
          buildable = true;
          };
        };
      };
    }