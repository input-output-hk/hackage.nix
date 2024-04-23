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
      identifier = { name = "core-webserver-servant"; version = "0.1.1.1"; };
      license = "MIT";
      copyright = "© 2021-2022 Athae Eredh Siniath and Others";
      maintainer = "Andrew Cowie <istathar@gmail.com>";
      author = "Carlos D'Agostino <carlos.dagostino@gmail.com>";
      homepage = "https://github.com/aesiniath/unbeliever#readme";
      url = "";
      synopsis = "Interoperability with Servant";
      description = "This is part of a library to help build command-line programs, both tools and\nlonger-running daemons.\n\nThis package in particular adds wrappers around the __servant__ library\ncommonly used for exposing web services APIs and allows your handlers to\nbe written in the Program monad from __core-program__.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
          (hsPkgs."core-telemetry" or (errorHandler.buildDepError "core-telemetry"))
          (hsPkgs."core-webserver-warp" or (errorHandler.buildDepError "core-webserver-warp"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }