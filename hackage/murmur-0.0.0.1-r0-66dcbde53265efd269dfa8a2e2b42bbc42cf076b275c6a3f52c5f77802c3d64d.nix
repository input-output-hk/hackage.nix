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
      identifier = { name = "murmur"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "http://github.com/tokiwoousaka/murmur#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."twitter-conduit" or (errorHandler.buildDepError "twitter-conduit"))
          (hsPkgs."twitter-types-lens" or (errorHandler.buildDepError "twitter-types-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."authenticate-oauth" or (errorHandler.buildDepError "authenticate-oauth"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (errorHandler.buildDepError "conduit-extra"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      exes = {
        "mur" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."murmur" or (errorHandler.buildDepError "murmur"))
            (hsPkgs."twitter-conduit" or (errorHandler.buildDepError "twitter-conduit"))
            (hsPkgs."optparse-declarative" or (errorHandler.buildDepError "optparse-declarative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      tests = {
        "murmur-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."murmur" or (errorHandler.buildDepError "murmur"))
            ];
          buildable = true;
          };
        };
      };
    }