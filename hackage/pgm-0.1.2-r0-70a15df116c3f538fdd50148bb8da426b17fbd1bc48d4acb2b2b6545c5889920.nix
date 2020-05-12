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
      identifier = { name = "pgm"; version = "0.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "fred.ross@epfl.ch";
      author = "Frederick Ross";
      homepage = "http://github.com/madhadron/haskell-pgm";
      url = "";
      synopsis = "Pure Haskell implementation of PGM image format";
      description = "Reads and writes 8 and 16 bit PGM images, loading them into Haskell as arrays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }