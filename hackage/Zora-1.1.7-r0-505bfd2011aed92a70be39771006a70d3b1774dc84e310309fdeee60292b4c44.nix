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
      identifier = { name = "Zora"; version = "1.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bgwines@cs.stanford.edu";
      author = "Brett Wines";
      homepage = "git://github.com/bgwines/zora.git";
      url = "";
      synopsis = "A library of assorted useful functions and data types and classes.";
      description = "A library of assorted useful functions and data types and classes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }