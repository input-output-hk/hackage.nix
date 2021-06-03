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
      specVersion = "2.2";
      identifier = { name = "Shpadoinkle-router"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "isaac.shapira@platonic.systems";
      author = "Isaac Shapira";
      homepage = "";
      url = "";
      synopsis = "A single page application rounter for Shpadoinkle based on Servant.";
      description = "Surjective single page application routing with Servant. Surjectivity\nin this context means routes can be backward compatible, allowing URLs\nto evolve. Since routes are specified as Servant combinators, serving\nthese routes from the backend is trivial. For an example of leveraging\nthe client-server isomorphism via Servant specification,\ncheck the servant-crud example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Shpadoinkle" or (errorHandler.buildDepError "Shpadoinkle"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."compactable" or (errorHandler.buildDepError "compactable"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ghcjs-dom" or (errorHandler.buildDepError "ghcjs-dom"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."jsaddle" or (errorHandler.buildDepError "jsaddle"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-rawm" or (errorHandler.buildDepError "servant-rawm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ] ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."servant-client-js" or (errorHandler.buildDepError "servant-client-js"))
            ]
          else [
            (hsPkgs."Shpadoinkle-backend-static" or (errorHandler.buildDepError "Shpadoinkle-backend-static"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."jsaddle-warp" or (errorHandler.buildDepError "jsaddle-warp"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-client-js" or (errorHandler.buildDepError "servant-client-js"))
            (hsPkgs."servant-rawm-server" or (errorHandler.buildDepError "servant-rawm-server"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-app-static" or (errorHandler.buildDepError "wai-app-static"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ]);
        buildable = true;
        };
      };
    }