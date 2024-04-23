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
      identifier = { name = "greenclip"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Erèbe";
      maintainer = "romain.gerard@erebe.eu";
      author = "Erèbe - Romain GERARD";
      homepage = "https://github.com/erebe/greenclip#readme";
      url = "";
      synopsis = "Simple clipboard manager to be integrated with rofi";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "greenclip" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."classy-prelude" or (errorHandler.buildDepError "classy-prelude"))
            (hsPkgs."Clipboard" or (errorHandler.buildDepError "Clipboard"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }