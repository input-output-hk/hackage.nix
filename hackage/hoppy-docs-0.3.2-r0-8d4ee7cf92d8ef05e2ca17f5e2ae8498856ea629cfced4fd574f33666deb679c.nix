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
      identifier = { name = "hoppy-docs"; version = "0.3.2"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright 2015-2017 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/hoppy";
      url = "";
      synopsis = "C++ FFI generator - Documentation";
      description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package contains documentation linking to the other Hoppy packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."hoppy-generator" or (errorHandler.buildDepError "hoppy-generator"))
          (hsPkgs."hoppy-runtime" or (errorHandler.buildDepError "hoppy-runtime"))
          ];
        buildable = true;
        };
      };
    }