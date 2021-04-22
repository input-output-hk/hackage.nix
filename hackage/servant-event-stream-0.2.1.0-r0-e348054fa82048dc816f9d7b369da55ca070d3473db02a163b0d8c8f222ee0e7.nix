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
      identifier = { name = "servant-event-stream"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Shaun Sharples";
      maintainer = "shaun.sharples@gmail.com";
      author = "Shaun Sharples";
      homepage = "https://github.com/bflyblue/servant-event-stream";
      url = "";
      synopsis = "Servant support for Server-Sent events";
      description = "This library adds necessary type combinators to support\nServer Sent Events within Servant ecosystem.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."servant-foreign" or (errorHandler.buildDepError "servant-foreign"))
          (hsPkgs."servant-js" or (errorHandler.buildDepError "servant-js"))
          (hsPkgs."servant-pipes" or (errorHandler.buildDepError "servant-pipes"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          ];
        buildable = true;
        };
      tests = {
        "tests-default" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }