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
      identifier = { name = "automotive-cse"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "Automotive CSE emulation";
      description = "This package includes Cryptography Security Engine (CSE)\ncodec emulation for automotive things.\nPorting logics from <https://github.com/naohaq/CSE_KeyGen/tree/master/Erlang>.\nReference documents:\n<http://cache.freescale.com/files/32bit/doc/app_note/AN4234.pdf>\n<http://cache.freescale.com/files/microcontrollers/doc/app_note/AN5178.pdf>\n<http://www.st.com/web/en/resource/technical/document/application_note/DM00075575.pdf>";
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
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
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