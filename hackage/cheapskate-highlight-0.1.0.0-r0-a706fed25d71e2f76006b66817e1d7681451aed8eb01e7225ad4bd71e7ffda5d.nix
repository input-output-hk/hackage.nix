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
      identifier = { name = "cheapskate-highlight"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/cheapskate-highlight";
      url = "";
      synopsis = "Code highlighting for cheapskate";
      description = "Code highlighting for cheapskate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."cheapskate" or (errorHandler.buildDepError "cheapskate"))
          (hsPkgs."highlighting-kate" or (errorHandler.buildDepError "highlighting-kate"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }