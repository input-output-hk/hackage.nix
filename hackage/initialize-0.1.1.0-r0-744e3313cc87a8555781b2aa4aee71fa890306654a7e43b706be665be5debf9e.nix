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
      specVersion = "2.2";
      identifier = { name = "initialize"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "copyright (c) 2018 andrewthad";
      maintainer = "chessai1996@gmail.com";
      author = "andrewthad";
      homepage = "https://github.com/chessai/initialize";
      url = "";
      synopsis = "Initialization and Deinitialization of 'Storable' values.";
      description = "This package provides two typeclasses, 'Initialize' and 'Deinitialize',\nwhich provide a common interface for initializing and deinitializing 'Storable'\ndata backed by a 'Ptr'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }