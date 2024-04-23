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
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty-jenkins-xml"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Ixperta Solutions s.r.o.";
      maintainer = "ixcom-core@ixperta.com";
      author = "Ixcom Core Team";
      homepage = "https://github.com/IxpertaSolutions/tasty-jenkins-xml#readme";
      url = "";
      synopsis = "Render tasty output to XML for Jenkins (ingredient transformer)";
      description = "A tasty ingredient transformer (meaning consoleTestReporter or any other ingredient can run as well) to output test results in XML, using the Ant schema. This XML can be consumed by the Jenkins continuous integration framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
          (hsPkgs."tasty-ant-xml" or (errorHandler.buildDepError "tasty-ant-xml"))
        ];
        buildable = true;
      };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."io-capture" or (errorHandler.buildDepError "io-capture"))
            (hsPkgs."mockery" or (errorHandler.buildDepError "mockery"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-jenkins-xml" or (errorHandler.buildDepError "tasty-jenkins-xml"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }