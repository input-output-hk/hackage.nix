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
      identifier = { name = "glob-posix"; version = "0.2.0.0"; };
      license = "LicenseRef-Apache";
      copyright = "2016 R D'Netto";
      maintainer = "rdnetto@gmail.com";
      author = "R D'Netto";
      homepage = "https://github.com/rdnetto/glob-posix#readme";
      url = "";
      synopsis = "Haskell bindings for POSIX glob library.";
      description = "Wrapper for the glob(3) function. The key functions are glob and globMany.\nGNU extensions are supported but contained in a different module to encourage portability.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "glob-posix-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."glob-posix" or (errorHandler.buildDepError "glob-posix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-expected-failure" or (errorHandler.buildDepError "tasty-expected-failure"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "glob-posix-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."glob-posix" or (errorHandler.buildDepError "glob-posix"))
            ];
          buildable = true;
          };
        };
      };
    }