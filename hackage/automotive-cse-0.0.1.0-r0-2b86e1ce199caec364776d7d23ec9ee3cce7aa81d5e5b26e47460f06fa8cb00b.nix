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
      identifier = { name = "automotive-cse"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Automotive CSE emulation";
      description = "This package includes Cryptography Security Engine (CSE)\ncodec emulation for automotive things.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          ];
        buildable = true;
        };
      tests = {
        "exTrue" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quickcheck-simple" or (errorHandler.buildDepError "quickcheck-simple"))
            (hsPkgs."automotive-cse" or (errorHandler.buildDepError "automotive-cse"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ];
          buildable = true;
          };
        };
      };
    }