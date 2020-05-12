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
      identifier = { name = "snaplet-wordpress"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson <dbp@dbpmail.net>, Matt Raibert <mattraibert@gmail.com>";
      homepage = "https://github.com/dbp/snaplet-wordpress";
      url = "";
      synopsis = "A snaplet that communicates with wordpress over its api.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."map-syntax" or (errorHandler.buildDepError "map-syntax"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snaplet-redis" or (errorHandler.buildDepError "snaplet-redis"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-snap" or (errorHandler.buildDepError "hspec-snap"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "test-snaplet-wordpress" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
            (hsPkgs."hspec-snap" or (errorHandler.buildDepError "hspec-snap"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."snaplet-wordpress" or (errorHandler.buildDepError "snaplet-wordpress"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."snaplet-redis" or (errorHandler.buildDepError "snaplet-redis"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
            ];
          buildable = true;
          };
        };
      };
    }