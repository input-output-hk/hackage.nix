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
      specVersion = "1.12";
      identifier = { name = "sandi"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Magnus Therning <magnus@therning.org>";
      author = "";
      homepage = "";
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."sandi" or (errorHandler.buildDepError "sandi"))
            ];
          buildable = true;
          };
        };
      };
    }