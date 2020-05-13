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
      specVersion = "1.6";
      identifier = { name = "text-binary"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/text-binary";
      url = "";
      synopsis = "Binary instances for text types";
      description = "The library provides binary instances for strict and lazy text types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }