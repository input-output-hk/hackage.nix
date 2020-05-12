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
      specVersion = "1.6";
      identifier = { name = "bmp"; version = "1.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://code.haskell.org/~benl/code/bmp-head";
      url = "";
      synopsis = "Read and write uncompressed BMP image files.";
      description = "Read and write uncompressed BMP image files. 100% robust Haskell implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }