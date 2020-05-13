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
      identifier = { name = "feed"; version = "0.3.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sigbjorn Finne <sof@forkIO.com>";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
      description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }