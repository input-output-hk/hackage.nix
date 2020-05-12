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
      specVersion = "1.8";
      identifier = { name = "dclabel"; version = "0.9.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Hails team";
      maintainer = "Hails Team  <hails-team at scs dot stanford dot edu>";
      author = "Hails Team";
      homepage = "";
      url = "";
      synopsis = "This packge is deprecated. See the the \"LIO.DCLabel\" in the \"lio\" package.";
      description = "The /DC Label/ (DCLabel) library provides an information flow\ncontrol label format in the form of conjunctions of\ndisjunctions of principals. Most code should import module\n\"DCLabel\"; trusted code may additionally import\n\"DCLabel.Privs.TCB\".  The core functionality of the library is\ndocumented in \"DCLabel.Core\", while the small EDSL used to\ncreate labels is documents in \"DCLabel.NanoEDSL\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dclabel" or (errorHandler.buildDepError "dclabel"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."dclabel" or (errorHandler.buildDepError "dclabel"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            ];
          buildable = true;
          };
        };
      };
    }