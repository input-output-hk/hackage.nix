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
      specVersion = "1.2";
      identifier = { name = "press"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "bickfordb@gmail.com";
      author = "Brandon Bickford <bickfordb@gmail.com>";
      homepage = "http://github.com/bickfordb/text-press";
      url = "";
      synopsis = "Text templating language";
      description = "A text templating language similar to Jinja & Django Templates";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          ];
        buildable = true;
        };
      };
    }