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
      identifier = { name = "pipes-cellular"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/pipes-cellular";
      url = "";
      synopsis = "Pipes-based combinators for cellular data processing";
      description = "This library provides a number of miscellaneous utilities\nfor pipes-based processing of cellular data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-cell" or (errorHandler.buildDepError "data-cell"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
        buildable = true;
        };
      };
    }