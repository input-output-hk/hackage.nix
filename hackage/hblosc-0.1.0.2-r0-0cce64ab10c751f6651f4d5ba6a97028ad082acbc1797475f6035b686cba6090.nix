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
    flags = { externalblosc = false; sharedblosc = false; usepic = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hblosc"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "ben@silurian.ai";
      author = "Benjamin Sobel";
      homepage = "";
      url = "";
      synopsis = "Blosc (numerical compression library) bindings for Haskell";
      description = "FFI bindings for blosc, a numerical compression library that includes a number of compression algorithms, as well as its own system for compressing and decompressing data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        pkgconfig = pkgs.lib.optional (flags.externalblosc) (pkgconfPkgs."blosc" or (errorHandler.pkgConfDepError "blosc"));
        buildable = true;
      };
      tests = {
        "hblosc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hblosc" or (errorHandler.buildDepError "hblosc"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }