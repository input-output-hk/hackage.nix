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
    flags = { debug = false; example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "sockets"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/sockets";
      url = "";
      synopsis = "High-level network sockets";
      description = "High-level abstraction for network sockets";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          ];
        buildable = true;
        };
      exes = {
        "sockets-example" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sockets" or (errorHandler.buildDepError "sockets"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."fast-logger" or (errorHandler.buildDepError "fast-logger"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sockets" or (errorHandler.buildDepError "sockets"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "macro" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sockets" or (errorHandler.buildDepError "sockets"))
            (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          };
        };
      };
    }