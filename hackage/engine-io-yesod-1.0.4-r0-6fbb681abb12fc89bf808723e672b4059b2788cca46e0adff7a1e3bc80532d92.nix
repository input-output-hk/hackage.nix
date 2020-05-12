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
      identifier = { name = "engine-io-yesod"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<http://www.yesodweb.com/ Yesod>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."engine-io" or (errorHandler.buildDepError "engine-io"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."wai-websockets" or (errorHandler.buildDepError "wai-websockets"))
          ];
        buildable = true;
        };
      };
    }