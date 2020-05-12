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
      identifier = { name = "pbc4hs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "davidxifeng@gmail.com";
      author = "david feng";
      homepage = "";
      url = "";
      synopsis = "pbc for HsLua";
      description = "pbc wrapper for HsLua";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          ];
        buildable = true;
        };
      };
    }