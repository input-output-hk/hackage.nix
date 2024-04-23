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
      specVersion = "1.24";
      identifier = { name = "hoppy-std"; version = "0.8.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2015-2021 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/hoppy";
      url = "";
      synopsis = "C++ FFI generator - Standard library bindings";
      description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package contains definitions for the C++ standard library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."hoppy-generator" or (errorHandler.buildDepError "hoppy-generator"))
        ];
        buildable = true;
      };
    };
  }