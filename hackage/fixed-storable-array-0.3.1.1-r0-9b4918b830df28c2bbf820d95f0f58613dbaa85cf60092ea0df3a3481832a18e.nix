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
      identifier = { name = "fixed-storable-array"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chowells79@gmail.com";
      author = "Carl Howells";
      homepage = "";
      url = "";
      synopsis = "Fixed-size wrapper for StorableArray, providing a\nStorable instance. Deprecated - use storable-static-array\ninstead.";
      description = "Uses type-level numeric literals to wrap @StorableArray@\nin a type that statically fixes its size. The wrapper has\na @Storable@ instance, for easy integration with\nfixed-size native arrays.\n\nDeprecated - use storable-static-array instead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
        ];
        buildable = true;
      };
    };
  }