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
      specVersion = "2.2";
      identifier = { name = "fpe"; version = "0.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Galen Huntington";
      author = "Galen Huntington";
      homepage = "https://github.com/galenhuntington/fpe#readme";
      url = "";
      synopsis = "Format-preserving encryption.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
        ];
        buildable = true;
      };
      tests = {
        "suite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."fpe" or (errorHandler.buildDepError "fpe"))
          ];
          buildable = true;
        };
      };
    };
  }