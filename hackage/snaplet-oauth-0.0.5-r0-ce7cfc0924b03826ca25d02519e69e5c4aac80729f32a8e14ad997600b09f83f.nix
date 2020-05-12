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
      identifier = { name = "snaplet-oauth"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Haisheng,Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng,Wu";
      homepage = "freizl.github.com";
      url = "";
      synopsis = "snaplet-oauth";
      description = "This lib is in Alpha status and APIs are likely to be changed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."data-lens-template" or (errorHandler.buildDepError "data-lens-template"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-loader-dynamic" or (errorHandler.buildDepError "snap-loader-dynamic"))
          (hsPkgs."snap-loader-static" or (errorHandler.buildDepError "snap-loader-static"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."MonadCatchIO-mtl" or (errorHandler.buildDepError "MonadCatchIO-mtl"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."hoauth2" or (errorHandler.buildDepError "hoauth2"))
          ];
        buildable = true;
        };
      tests = {
        "oauth-unit-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-show" or (errorHandler.buildDepError "bytestring-show"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."snaplet-oauth" or (errorHandler.buildDepError "snaplet-oauth"))
            ];
          buildable = true;
          };
        };
      };
    }