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
      identifier = { name = "core-effect-effectful"; version = "0.0.0.4"; };
      license = "MIT";
      copyright = "© 2023- Athae Eredh Siniath and Others";
      maintainer = "Andrew Cowie <istathar@gmail.com>";
      author = "Juan Raphael Diaz Simões <juanrapha@gmail.com>";
      homepage = "https://github.com/aesiniath/unbeliever#readme";
      url = "";
      synopsis = "Interoperability with the effectful effects system";
      description = "This is part of a library to help build command-line programs, both tools and\nlonger-running daemons.\n\nThis package adds wrappers around the __effectful__ library, providing an\nimplmentation of a ProgramE τ effect wrapping the Program τ monad from\n__core-program__ so that applications needing to use a complicated effect\nsystem can still access top-level program utilities such as concurrency,\nlogging, and telemetry.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
          (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
          (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
        ];
        buildable = true;
      };
    };
  }