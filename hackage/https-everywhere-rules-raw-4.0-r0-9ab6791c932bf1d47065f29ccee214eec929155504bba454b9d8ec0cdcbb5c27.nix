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
      identifier = { name = "https-everywhere-rules-raw"; version = "4.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "vi@zalora.com";
      author = "vi";
      homepage = "https://github.com/fmap/https-everywhere-rules-raw";
      url = "";
      synopsis = "Low-level (i.e. XML) access to HTTPS Everywhere rulesets.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."functor-infix" or (errorHandler.buildDepError "functor-infix"))
          ];
        buildable = true;
        };
      };
    }