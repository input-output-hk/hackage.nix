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
      identifier = { name = "cold-widow"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Mihai Giurgeanu";
      maintainer = "mihai.giurgeau@gmail.com";
      author = "Mihai Giurgeanu";
      homepage = "https://github.com/mihaigiurgeanu/cold-widow#readme";
      url = "";
      synopsis = "File transfer via QR Codes.";
      description = "Utilities and Haskell library to transfer files via qr-codes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "cold-widow" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "encode45" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cold-widow" or (errorHandler.buildDepError "cold-widow"))
          ];
          buildable = true;
        };
        "decode45" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cold-widow" or (errorHandler.buildDepError "cold-widow"))
          ];
          buildable = true;
        };
        "compact-decode45" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
      tests = {
        "cold-widow-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cold-widow" or (errorHandler.buildDepError "cold-widow"))
          ];
          buildable = true;
        };
      };
    };
  }