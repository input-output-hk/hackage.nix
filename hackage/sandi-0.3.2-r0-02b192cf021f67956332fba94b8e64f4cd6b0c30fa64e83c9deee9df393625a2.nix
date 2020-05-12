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
    flags = { with-conduit = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "sandi"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Magnus Therning, 2012";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "http://hackage.haskell.org/package/sandi";
      url = "";
      synopsis = "Data encoding library";
      description = "Reasonably fast data encoding library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.with-conduit) [
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      tests = {
        "sandi-tests" = {
          depends = [
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "sandi-bench" = {
          depends = [
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }