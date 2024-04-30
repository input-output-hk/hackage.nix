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
      specVersion = "3.4";
      identifier = { name = "bloohm"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Shae Erisson";
      maintainer = "Shae Erisson";
      author = "Shae Erisson";
      homepage = "https://github.com/shapr/bloohm";
      url = "";
      synopsis = "visual bloom filter for neotrellis m4 output";
      description = "visual bloom filter for process status visualization";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        buildable = true;
      };
      exes = {
        "bloohm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloohm" or (errorHandler.buildDepError "bloohm"))
            (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ReadArgs" or (errorHandler.buildDepError "ReadArgs"))
          ];
          buildable = true;
        };
      };
      tests = {
        "bloohm-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bloohm" or (errorHandler.buildDepError "bloohm"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }