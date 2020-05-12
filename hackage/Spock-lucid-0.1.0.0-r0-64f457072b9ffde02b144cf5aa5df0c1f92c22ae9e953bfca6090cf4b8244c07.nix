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
      identifier = { name = "Spock-lucid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/Spock-lucid";
      url = "";
      synopsis = "Lucid support for Spock";
      description = "Lucid support for Spock";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }