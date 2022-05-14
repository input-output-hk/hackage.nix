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
      identifier = { name = "core-webserver-warp"; version = "0.1.1.4"; };
      license = "MIT";
      copyright = "© 2021-2022 Athae Eredh Siniath and Others";
      maintainer = "Andrew Cowie <istathar@gmail.com>";
      author = "Andrew Cowie <istathar@gmail.com>";
      homepage = "https://github.com/aesiniath/unbeliever#readme";
      url = "";
      synopsis = "Interoperability with Wai/Warp";
      description = "This is part of a library to help build command-line programs, both tools and\nlonger-running daemons.\n\nThis package in particular adds wrappers around the __wai__ (Web Application\nInterface) and __warp__ (Web Server) to facilitate integrating this commonly\nused webserver combination with the Program monad from __core-program__.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."core-data" or (errorHandler.buildDepError "core-data"))
          (hsPkgs."core-program" or (errorHandler.buildDepError "core-program"))
          (hsPkgs."core-telemetry" or (errorHandler.buildDepError "core-telemetry"))
          (hsPkgs."core-text" or (errorHandler.buildDepError "core-text"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http2" or (errorHandler.buildDepError "http2"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."vault" or (errorHandler.buildDepError "vault"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }