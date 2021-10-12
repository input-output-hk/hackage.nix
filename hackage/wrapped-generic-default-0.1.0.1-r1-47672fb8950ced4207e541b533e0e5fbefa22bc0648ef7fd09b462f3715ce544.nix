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
      identifier = { name = "wrapped-generic-default"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "2017-2021 Google LLC";
      maintainer = "Andrew Pritchard <awpr@google.com>";
      author = "Reiner Pope <reinerp@google.com>";
      homepage = "https://github.com/google/hs-wrapped#readme";
      url = "";
      synopsis = "A Generic instance of Default";
      description = "This provides support for Generic-based deriving of Default as an instance on\nWrapped Generic, so that Default instances can be derived as\n@deriving Default via Wrapped Generic MyType@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          (hsPkgs."wrapped" or (errorHandler.buildDepError "wrapped"))
          ];
        buildable = true;
        };
      };
    }