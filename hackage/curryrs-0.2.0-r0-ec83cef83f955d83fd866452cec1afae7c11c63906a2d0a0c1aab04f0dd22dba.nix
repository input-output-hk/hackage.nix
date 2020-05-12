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
      identifier = { name = "curryrs"; version = "0.2.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2016 Michael Gattozzi";
      maintainer = "mgattozzi@gmail.com";
      author = "Michael Gattozzi";
      homepage = "https://github.com/mgattozzi/curryrs#readme";
      url = "";
      synopsis = "Easy to use FFI Bridge for using Rust in Haskell";
      description = "Please see README.md for more information on how to use this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "curryrs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curryrs" or (errorHandler.buildDepError "curryrs"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "curryrs-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curryrs" or (errorHandler.buildDepError "curryrs"))
            ];
          buildable = true;
          };
        };
      };
    }