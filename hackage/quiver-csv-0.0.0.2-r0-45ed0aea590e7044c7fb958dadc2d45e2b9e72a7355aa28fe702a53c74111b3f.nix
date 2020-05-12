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
      identifier = { name = "quiver-csv"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 Patryk Zadarnowski";
      maintainer = "Patryk Zadarnowski <pat@jantar.org>";
      author = "Patryk Zadarnowski";
      homepage = "https://github.com/zadarnowski/quiver-csv";
      url = "";
      synopsis = "Quiver combinators for cellular CSV data processing";
      description = "This library provides an efficient pipes-based implementation\nof a cellular CSV codec designed for fast streaming of data\nwith guaranteed constant memory usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-cell" or (errorHandler.buildDepError "data-cell"))
          (hsPkgs."quiver" or (errorHandler.buildDepError "quiver"))
          (hsPkgs."quiver-bytestring" or (errorHandler.buildDepError "quiver-bytestring"))
          ];
        buildable = true;
        };
      };
    }