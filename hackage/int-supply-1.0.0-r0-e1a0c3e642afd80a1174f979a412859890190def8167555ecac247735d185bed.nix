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
      specVersion = "2.4";
      identifier = { name = "int-supply"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2023 Mitchell Rosen, Travis Staton";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Rosen, Travis Staton";
      homepage = "https://github.com/awkward-squad/int-supply";
      url = "";
      synopsis = "A simple, efficient supply of integers using atomic fetch-and-add.";
      description = "This package provides a simple, efficient supply of integers using atomic fetch-and-add.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }