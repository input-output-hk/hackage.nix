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
      specVersion = "3.0";
      identifier = { name = "servant-server"; version = "0.20.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://docs.servant.dev/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "A family of combinators for defining webservices APIs and serving them\n.\nYou can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.\n.\n<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package.\n.\n<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
        ];
        buildable = true;
      };
      exes = {
        "greet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (errorHandler.buildDepError "hspec-wai"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }