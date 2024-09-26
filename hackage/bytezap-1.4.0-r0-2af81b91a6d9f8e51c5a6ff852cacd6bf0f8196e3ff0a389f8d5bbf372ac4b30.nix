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
      identifier = { name = "bytezap"; version = "1.4.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Orchard <thefirstmuffinman@gmail.com>";
      author = "Ben Orchard";
      homepage = "https://github.com/raehik/bytezap#readme";
      url = "";
      synopsis = "Bytestring builder with zero intermediate allocation";
      description = "Please see README.md.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."defun-core" or (errorHandler.buildDepError "defun-core"))
          (hsPkgs."generic-type-functions" or (errorHandler.buildDepError "generic-type-functions"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."type-level-bytestrings" or (errorHandler.buildDepError "type-level-bytestrings"))
        ];
        buildable = true;
      };
    };
  }