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
      identifier = { name = "hsmodetweaks"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mark Wotton";
      maintainer = "mwotton@gmail.com";
      author = "mwotton@gmail.com";
      homepage = "https://github.com/mwotton/hsmodetweaks#readme";
      url = "";
      synopsis = "Tool for generating .dir-locals.el for intero";
      description = "Keeps .dir-locals.el up to date so that intero can automatically choose the right targets";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsmodetweaks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }