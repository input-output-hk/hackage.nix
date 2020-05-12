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
      identifier = { name = "blockhash"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "kwangyul.seo@gmail.com";
      author = "Kwang Yul Seo";
      homepage = "https://github.com/kseo/blockhash#readme";
      url = "";
      synopsis = "Blockhash perceptual image hash algorithm";
      description = "This is a perceptual image hash calculation tool based on algorithm descibed\nin Block Mean Value Based Image Perceptual Hashing by Bian Yang, Fan Gu and\nXiamu Niu.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ];
        buildable = true;
        };
      exes = {
        "blockhash" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockhash" or (errorHandler.buildDepError "blockhash"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "blockhash-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blockhash" or (errorHandler.buildDepError "blockhash"))
            ];
          buildable = true;
          };
        };
      };
    }