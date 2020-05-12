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
      identifier = { name = "hist-pl-dawg"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/hist-pl/tree/master/dawg";
      url = "";
      synopsis = "A generic, DAWG-based dictionary";
      description = "A generic dictionary implementation based on directed acyclic word graphs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text-binary" or (errorHandler.buildDepError "text-binary"))
          (hsPkgs."dawg" or (errorHandler.buildDepError "dawg"))
          ];
        buildable = true;
        };
      };
    }