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
      identifier = { name = "twentefp-eventloop-trees"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sebastiaan.la.fleur@gmail.com          ";
      author = "Sebastiaan la Fleur";
      homepage = "";
      url = "";
      synopsis = "Tree type and show functions for lab assignment of University of Twente. Contains RoseTree and RedBlackTree";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."eventloop" or (errorHandler.buildDepError "eventloop"))
        ];
        buildable = true;
      };
    };
  }