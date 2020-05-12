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
      specVersion = "1.8";
      identifier = { name = "tostring"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "Silk B.V.";
      homepage = "";
      url = "";
      synopsis = "The ToString class";
      description = "A type class for converting text types to String.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }