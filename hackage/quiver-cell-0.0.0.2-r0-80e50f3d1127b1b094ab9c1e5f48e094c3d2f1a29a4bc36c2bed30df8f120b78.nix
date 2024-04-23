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
      specVersion = "1.18";
      identifier = { name = "quiver-cell"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/quiver-cell";
      url = "";
      synopsis = "Quiver combinators for cellular data processing";
      description = "This library provides combinators for Quiver-based streaming\nof cellular data, i.e., tabular data encoded as a stream of\noptionally-fragmented cell values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-cell" or (errorHandler.buildDepError "data-cell"))
          (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
        ];
        buildable = true;
      };
    };
  }