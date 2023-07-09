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
      specVersion = "1.12";
      identifier = { name = "aeson-warning-parser"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2023 FP Complete";
      maintainer = "Mike Pilgrem <public@pilgrem.com>";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/aeson-warning-parser#readme";
      url = "";
      synopsis = "Library providing JSON parser that warns about unexpected fields in objects.";
      description = "Please see the README on GitHub at <https://github.com/commercialhaskell/aeson-warning-parser#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."rio-prettyprint" or (errorHandler.buildDepError "rio-prettyprint"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }