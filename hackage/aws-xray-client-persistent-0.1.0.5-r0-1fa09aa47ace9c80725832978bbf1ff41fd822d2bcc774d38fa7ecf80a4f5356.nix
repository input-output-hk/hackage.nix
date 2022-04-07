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
      specVersion = "1.18";
      identifier = {
        name = "aws-xray-client-persistent";
        version = "0.1.0.5";
        };
      license = "MIT";
      copyright = "2021 Renaissance Learning Inc";
      maintainer = "engineering@freckle.com";
      author = "Freckle R&D";
      homepage = "https://github.com/freckle/aws-xray-client#readme";
      url = "";
      synopsis = "A client for AWS X-Ray integration with Persistent.";
      description = "Works with `aws-xray-client` to enable X-Ray tracing with Persistent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aws-xray-client" or (errorHandler.buildDepError "aws-xray-client"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }