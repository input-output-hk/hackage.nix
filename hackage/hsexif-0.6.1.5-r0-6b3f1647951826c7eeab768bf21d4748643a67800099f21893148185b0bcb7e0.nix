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
    flags = { iconv = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsexif"; version = "0.6.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "etouzery@gmail.com";
      author = "Emmanuel Touzery";
      homepage = "https://github.com/emmanueltouzery/hsexif";
      url = "";
      synopsis = "EXIF handling library in pure Haskell";
      description = "The hsexif library provides functions for working with EXIF data\ncontained in JPEG files. Currently it only supports reading the data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.iconv) (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (pkgs.lib).optional (flags.iconv) (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"));
          buildable = true;
          };
        };
      };
    }