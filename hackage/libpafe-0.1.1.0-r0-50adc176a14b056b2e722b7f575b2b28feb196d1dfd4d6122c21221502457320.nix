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
      identifier = { name = "libpafe"; version = "0.1.1.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "haru2036@gmail.com";
      author = "haru2036";
      homepage = "";
      url = "";
      synopsis = "Wrapper for libpafe";
      description = "Wrapper for Pasori library libpafe";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = [ (pkgs."pafe" or (errorHandler.sysDepError "pafe")) ];
        buildable = true;
      };
      tests = {
        "test-read" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libpafe" or (errorHandler.buildDepError "libpafe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "test-read-fcf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libpafe" or (errorHandler.buildDepError "libpafe"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))
          ];
          buildable = true;
        };
      };
    };
  }