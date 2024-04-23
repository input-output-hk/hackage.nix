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
      identifier = { name = "sdp4text"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrey Mulik";
      maintainer = "work.a.mulik@gmail.com";
      author = "Andrey Mulik";
      homepage = "";
      url = "";
      synopsis = "SDP wrapper for Text.";
      description = "This package implements SDP classes for Text.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."sdp" or (errorHandler.buildDepError "sdp"))
          (hsPkgs."sdp-io" or (errorHandler.buildDepError "sdp-io"))
        ];
        buildable = true;
      };
      tests = {
        "test-bytestring-strict" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdp" or (errorHandler.buildDepError "sdp"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."sdp-io" or (errorHandler.buildDepError "sdp-io"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."sdp-quickcheck" or (errorHandler.buildDepError "sdp-quickcheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
        "test-bytestring-lazy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdp" or (errorHandler.buildDepError "sdp"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."sdp-io" or (errorHandler.buildDepError "sdp-io"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."sdp-quickcheck" or (errorHandler.buildDepError "sdp-quickcheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }