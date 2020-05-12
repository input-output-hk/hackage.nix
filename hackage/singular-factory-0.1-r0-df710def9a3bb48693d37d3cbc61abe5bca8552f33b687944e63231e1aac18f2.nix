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
    flags = { pkg-cfg-prefix = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "singular-factory"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2019 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "https://github.com/bkomuves/singular-factory";
      url = "";
      synopsis = "Multivariate polynomial factorization via bindings to Singular-factory ";
      description = "Bindings to Singular-factory. Factory is the subset of the Singular\ncomputer algebra system which does factorization of multivariate\npolynomials (over integers, rationals, and finite fields)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."hgmp" or (errorHandler.buildDepError "hgmp"))
          ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        pkgconfig = if flags.pkg-cfg-prefix
          then [
            (pkgconfPkgs."singular-factory" or (errorHandler.pkgConfDepError "singular-factory"))
            ]
          else [
            (pkgconfPkgs."factory" or (errorHandler.pkgConfDepError "factory"))
            ];
        buildable = true;
        };
      tests = {
        "singular-factory-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."singular-factory" or (errorHandler.buildDepError "singular-factory"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }