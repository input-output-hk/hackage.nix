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
      identifier = { name = "classy-prelude-yesod"; version = "1.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mono-traversable#readme";
      url = "";
      synopsis = "Provide a classy prelude including common Yesod functionality.";
      description = "See docs and README at <http://www.stackage.org/package/classy-prelude-yesod>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
          (hsPkgs."classy-prelude-conduit" or (errorHandler.buildDepError "classy-prelude-conduit"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."yesod" or (errorHandler.buildDepError "yesod"))
          (hsPkgs."yesod-newsfeed" or (errorHandler.buildDepError "yesod-newsfeed"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          ];
        buildable = true;
        };
      };
    }