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
      specVersion = "1.0";
      identifier = { name = "suffixtree"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bos@serpentine.com";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/software/suffixtree/";
      url = "";
      synopsis = "Efficient, lazy suffix tree implementation";
      description = "An efficient, lazy suffix tree implementation.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }