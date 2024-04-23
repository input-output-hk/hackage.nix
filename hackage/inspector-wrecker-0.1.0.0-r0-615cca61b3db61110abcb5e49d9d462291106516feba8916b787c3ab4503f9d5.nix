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
      identifier = { name = "inspector-wrecker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/skedgeme/inspector-wrecker#readme";
      url = "";
      synopsis = "Create benchmarks from the HAR files";
      description = "inspector-wrecker is a library and executable for creating HTTP benchmarks from\na HAR file dump from Chrome's Inspector.\nThe executable exposes the wrecker options and additionally takes in a path to\na HAR file.\nThe library exposes a single function, 'runHar', which produces a function\n'wrecker''s library can use for benchmarks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wrecker" or (errorHandler.buildDepError "wrecker"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
        ];
        buildable = true;
      };
      exes = {
        "inspector-wrecker-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inspector-wrecker" or (errorHandler.buildDepError "inspector-wrecker"))
          ];
          buildable = true;
        };
      };
      tests = {
        "inspector-wrecker-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."inspector-wrecker" or (errorHandler.buildDepError "inspector-wrecker"))
          ];
          buildable = true;
        };
      };
    };
  }