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
      specVersion = "1.12";
      identifier = { name = "hspec-golden"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "2019-Present Stack Builders Inc";
      maintainer = "Cristhian Motoche <cmotoche@stackbuilders.com>";
      author = "Stack Builders";
      homepage = "https://github.com/stackbuilders/hspec-golden#readme";
      url = "";
      synopsis = "Golden tests for hspec";
      description = "\nGolden tests store the expected output in a separated file. Each time a golden test\nis executed the output of the subject under test (SUT) is compared with the\nexpected output. If the output of the SUT changes then the test will fail until\nthe expected output is updated.\n\n@hspec-golden@ allows you to write golden tests using the popular @hspec@.\n\n> describe \"myFunc\" $\n>   it \"generates the right output with the right params\" $\n>      let output = show $ myFunc params\n>        in defaultGolden \"myFunc\" output\n\nPlease see the <https://github.com/stackbuilders/hspec-golden#readme README on GitHub>\nfor more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
        ];
        buildable = true;
      };
      exes = {
        "hgold" = {
          depends = [
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hspec-golden-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-golden" or (errorHandler.buildDepError "hspec-golden"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }