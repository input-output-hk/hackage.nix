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
      identifier = { name = "data-embed"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "anton@ekblad.cc";
      author = "Anton Ekblad";
      homepage = "https://github.com/valderman/data-embed";
      url = "";
      synopsis = "Embed files and other binary blobs inside executables without Template Haskell.";
      description = "This package provides a Template Haskell-free alternative to <http://hackage.haskell.org/package/file-embed file-embed>. It provides a versioned, well defined binary format for embedded blobs, as well as library support and command line utilities for manipulating them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
        ];
        buildable = true;
      };
      exes = {
        "embedtool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          ];
          buildable = true;
        };
      };
    };
  }