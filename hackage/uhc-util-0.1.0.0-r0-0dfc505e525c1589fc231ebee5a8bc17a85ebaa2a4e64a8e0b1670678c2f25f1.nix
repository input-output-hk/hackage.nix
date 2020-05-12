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
      identifier = { name = "uhc-util"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Utrecht University, Department of Information and Computing Sciences, Software Technology group";
      maintainer = "atze@uu.nl";
      author = "Atze Dijkstra";
      homepage = "https://github.com/UU-ComputerScience/uhc-utils";
      url = "";
      synopsis = "UHC utilities";
      description = "General purpose utilities for UHC and related tools";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          ];
        buildable = true;
        };
      };
    }