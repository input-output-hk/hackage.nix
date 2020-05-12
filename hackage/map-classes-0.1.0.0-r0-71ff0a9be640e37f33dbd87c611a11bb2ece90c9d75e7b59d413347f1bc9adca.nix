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
      identifier = { name = "map-classes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/map-classes";
      url = "";
      synopsis = "A set of classes and instances for working with key/value mappings.";
      description = "Basically a broad extension to the 'IArray' interface for all sorts of key/value maps.\n\nArrays, maps etc can all use these classes so datatypes can be swapped in and out of algorithms.\n\nThe classes have plenty of functions, but also many default implementations, so making instances for your datatypes should be relatively easy.\n\nOf course, if you give specialised defintions you might get better performance for some operations.\n\nCurrently only deals with pure structures but mutable structures are next on the todo list.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."kan-extensions" or (errorHandler.buildDepError "kan-extensions"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ];
        buildable = true;
        };
      };
    }