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
      identifier = { name = "numeric-quest"; version = "0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <numeric-quest@henning-thielemann.de>";
      author = "Jan Skibinski";
      homepage = "http://www.haskell.org/haskellwiki/Numeric_Quest";
      url = "";
      synopsis = "Math and quantum mechanics";
      description = "List based linear algebra,\nsimiltaneous linear equations,\neigenvalues and eigenvectors,\nroots of polynomials,\ntranscendent functions with arbitrary precision\nimplemented by continued fractions,\nquantum operations,\ntensors";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."prelude-compat" or (errorHandler.buildDepError "prelude-compat"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
      tests = {
        "numeric-quest-test" = {
          depends = [
            (hsPkgs."numeric-quest" or (errorHandler.buildDepError "numeric-quest"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }