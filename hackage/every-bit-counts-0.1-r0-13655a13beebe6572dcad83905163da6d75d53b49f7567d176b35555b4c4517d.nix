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
      specVersion = "1.2";
      identifier = { name = "every-bit-counts"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Dimitrios Vytiniotis and Andrew Kennedy";
      homepage = "http://research.microsoft.com/en-us/people/dimitris/pearl.pdf";
      url = "";
      synopsis = "A functional pearl on encoding and decoding using question-and-answer strategies";
      description = "A functional pearl on encoding and decoding using question-and-answer strategies";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }