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
      identifier = { name = "cheapskate-lucid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cheapskate-lucid";
      url = "";
      synopsis = "Use cheapskate with Lucid";
      description = "Use cheapskate with Lucid";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."cheapskate" or (errorHandler.buildDepError "cheapskate"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          ];
        buildable = true;
        };
      };
    }