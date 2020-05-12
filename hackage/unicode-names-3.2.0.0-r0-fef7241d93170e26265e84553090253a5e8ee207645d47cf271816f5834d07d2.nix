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
      specVersion = "0";
      identifier = { name = "unicode-names"; version = "3.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ashley Yakeley <ashley@semantic.org>";
      author = "Ashley Yakeley <ashley@semantic.org>";
      homepage = "";
      url = "";
      synopsis = "Unicode 3.2.0 character names";
      description = "Unicode 3.2.0 character names";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."unicode-properties" or (errorHandler.buildDepError "unicode-properties"))
          ];
        buildable = true;
        };
      };
    }