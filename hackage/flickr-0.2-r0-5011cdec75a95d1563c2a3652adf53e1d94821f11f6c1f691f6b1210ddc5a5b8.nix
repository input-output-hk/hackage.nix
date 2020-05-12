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
    flags = { new-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "flickr"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkIO.com";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the Flickr API";
      description = "The flickr API binding lets you access flickr.com's\nresources and methods from Haskell.\nImplements the full API, as specified by <http://flickr.com/services/api/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "showPublic" = { buildable = true; };
        "searchPics" = { buildable = true; };
        "gallery" = {
          depends = [
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ];
          buildable = true;
          };
        "uploader" = { buildable = true; };
        };
      };
    }