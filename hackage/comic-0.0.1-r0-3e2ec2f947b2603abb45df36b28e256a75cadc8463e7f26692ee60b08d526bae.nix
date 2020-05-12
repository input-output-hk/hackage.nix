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
      identifier = { name = "comic"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013-2017";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "A format for describing comics.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."sorted-list" or (errorHandler.buildDepError "sorted-list"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashable-orphans" or (errorHandler.buildDepError "hashable-orphans"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }