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
      specVersion = "1.8";
      identifier = { name = "storable-static-array"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "";
      url = "";
      synopsis = "Statically-sized array wrappers with Storable instances\nfor FFI marshaling";
      description = "Uses type-level numeric literals to wrap arrays in a type\nthat statically fixes their size. The wrapper has\na @Storable@ instance, for easy integration with\nfixed-size native arrays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }