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
      identifier = { name = "text-plus"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 factis research GmbH";
      maintainer = "kieran.meinhardt@gmail.com";
      author = "factis research GmbH";
      homepage = "https://github.com/factisresearch/opensource-mono#readme";
      url = "";
      synopsis = "Utils for text";
      description = "Utils for text";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."strict-data" or (errorHandler.buildDepError "strict-data"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."util-plus" or (errorHandler.buildDepError "util-plus"))
          ];
        buildable = true;
        };
      tests = {
        "text-plus-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HTF" or (errorHandler.buildDepError "HTF"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-plus" or (errorHandler.buildDepError "text-plus"))
            ];
          buildable = true;
          };
        };
      };
    }