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
      identifier = { name = "Gleam"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bennye@tcd.ie";
      author = "bennye@tcd.ie";
      homepage = "";
      url = "";
      synopsis = "HTML Canvas graphics, animations and simulations.";
      description = "Gleam is a graphics library written in Haskell that uses the web-browser as a display.\nGleam is inspired by the Picture datatype from gloss Gloss and uses Threepenny-gui as its back-end local webserver.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."threepenny-gui" or (errorHandler.buildDepError "threepenny-gui"))
        ];
        buildable = true;
      };
    };
  }