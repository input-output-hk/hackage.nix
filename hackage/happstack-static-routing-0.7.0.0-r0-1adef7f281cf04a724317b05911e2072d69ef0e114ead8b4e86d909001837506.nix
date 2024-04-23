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
      identifier = { name = "happstack-static-routing"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gracjan Polak <gracjanpolak@gmail.com>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/happstack-static-routing";
      url = "";
      synopsis = "Support for static URL routing with overlap detection for Happstack.";
      description = "If you have a large routing table in Happstack and want\nto insert a new handler, you might run into overlap problems\n(ambiguity).  The new handler might not fire because it matches\nagainst a URL that is already handled earlier.  Or if you put your\nnew handler first, it might steal requests from existing handlers.\nThis Happstack support library allows you to detect overlap cases\nand build unambiguous routing tables where the order of the handlers\nis irrelevant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
          (hsPkgs."list-tries" or (errorHandler.buildDepError "list-tries"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }