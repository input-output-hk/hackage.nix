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
      identifier = { name = "hoppy-runtime"; version = "0.1.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2015-2016 Bryan Gardiner";
      maintainer = "Bryan Gardiner <bog@khumba.net>";
      author = "Bryan Gardiner <bog@khumba.net>";
      homepage = "http://khumba.net/projects/hoppy";
      url = "";
      synopsis = "C++ FFI generator - Runtime support";
      description = "Hoppy generates Haskell bindings to C++ libraries.\n\nThis package provides common runtime functionality used by generated\nbindings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }