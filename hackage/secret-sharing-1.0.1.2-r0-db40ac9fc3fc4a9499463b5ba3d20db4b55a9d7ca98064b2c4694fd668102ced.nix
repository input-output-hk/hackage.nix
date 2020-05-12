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
      identifier = { name = "secret-sharing"; version = "1.0.1.2"; };
      license = "LGPL-2.1-only";
      copyright = "2014-2020 Peter Robinson";
      maintainer = "peter@lowerbound.io";
      author = "Peter Robinson";
      homepage = "https://github.com/pwrobinson/secret-sharing#readme";
      url = "";
      synopsis = "Information-theoretic secure secret sharing";
      description = "Please see the README on GitHub at <https://github.com/pwrobinson/secret-sharing#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."dice-entropy-conduit" or (errorHandler.buildDepError "dice-entropy-conduit"))
          (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "secret-sharing-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."dice-entropy-conduit" or (errorHandler.buildDepError "dice-entropy-conduit"))
            (hsPkgs."finite-field" or (errorHandler.buildDepError "finite-field"))
            (hsPkgs."secret-sharing" or (errorHandler.buildDepError "secret-sharing"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }