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
      identifier = { name = "html-rules"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Kyle Carter 2014, All rights reserved";
      maintainer = "Kyle Carter <kcarter@galois.com>";
      author = "Kyle Carter";
      homepage = "http://github.com/kylcarte/html-rules/";
      url = "";
      synopsis = "Perform traversals of HTML structures using sets of rules.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }