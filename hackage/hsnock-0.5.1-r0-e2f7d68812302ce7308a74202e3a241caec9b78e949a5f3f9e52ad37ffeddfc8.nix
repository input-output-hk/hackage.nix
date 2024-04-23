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
      identifier = { name = "hsnock"; version = "0.5.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "mrdomino@gmail.com";
      author = "Steven Dee";
      homepage = "https://github.com/mrdomino/hsnock/";
      url = "";
      synopsis = "Nock 5K interpreter.";
      description = "This is an implementation of the Nock 5K spec with an accompanying\ninterpreter.\n\nNock is a tiny stateless virtual machine that can be thought of\nas a functional assembly language. Nock is the lowest layer in\nthe Urbit stack. On top of it rests the Hoon language, in which\nthe Arvo OS is written.\n\nMore on Urbit: <http://www.urbit.org/>\n\nMore on Nock: <http://www.urbit.org/2013/08/22/Chapter-2-nock.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
        ];
        buildable = true;
      };
      exes = {
        "hsnock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ];
          buildable = true;
        };
      };
    };
  }