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
      specVersion = "3.0";
      identifier = { name = "libheif-hs"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Dragos Ionita";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell FFI bindings to libheif";
      description = "Decodes media in the HEIF format exposing a subset of available operations and\ndata from the underyling C [libheif](https://github.com/strukturag/libheif) library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."c-expr-runtime" or (errorHandler.buildDepError "c-expr-runtime"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hs-bindgen-runtime" or (errorHandler.buildDepError "hs-bindgen-runtime"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libheif" or (errorHandler.pkgConfDepError "libheif"))
          (pkgconfPkgs."libde265" or (errorHandler.pkgConfDepError "libde265"))
          (pkgconfPkgs."kvazaar" or (errorHandler.pkgConfDepError "kvazaar"))
        ];
        buildable = true;
      };
      tests = {
        "libheif-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."libheif-hs" or (errorHandler.buildDepError "libheif-hs"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          pkgconfig = [
            (pkgconfPkgs."libheif" or (errorHandler.pkgConfDepError "libheif"))
            (pkgconfPkgs."libde265" or (errorHandler.pkgConfDepError "libde265"))
            (pkgconfPkgs."kvazaar" or (errorHandler.pkgConfDepError "kvazaar"))
          ];
          buildable = true;
        };
      };
    };
  }