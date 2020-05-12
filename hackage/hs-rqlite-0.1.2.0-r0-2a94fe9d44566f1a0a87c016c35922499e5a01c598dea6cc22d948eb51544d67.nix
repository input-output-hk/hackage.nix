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
      identifier = { name = "hs-rqlite"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Konstantinos Dermentzis <k.dermenz@gmail.com>";
      maintainer = "Konstantinos Dermentzis <k.dermenz@gmail.com>";
      author = "Konstantinos Dermentzis <k.dermenz@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A Haskell client for RQlite";
      description = "See README at <https://github.com/kderme/hs-rqlite/blob/master/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }