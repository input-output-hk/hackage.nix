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
      identifier = { name = "zeromq4-simple"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 (c) Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "More constrained extensions to zeromq4-haskell";
      description = "Please see the README on GitHub at <https://github.com/githubuser/zeromq4-simple#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
          ];
        buildable = true;
        };
      };
    }