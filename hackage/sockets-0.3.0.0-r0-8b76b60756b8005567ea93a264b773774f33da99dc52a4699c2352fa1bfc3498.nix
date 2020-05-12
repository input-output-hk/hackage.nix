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
    flags = { mmsg = false; debug = false; example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "sockets"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/sockets";
      url = "";
      synopsis = "High-level network sockets";
      description = "This library provides a high-level abstraction for network sockets. It uses\nHaskell2010 (along with GADTs) without typeclasses to ensure that\nconsumers of the API can only call appropriate functions on a socket.\nExceptions are tracked in the types of functions and returned to the caller\nwith `Either`. The caller is free to handle these gracefully or to throw\nthem. This library only throws exceptions when it detects that it has misused\nthe operating system's sockets API (open an issue for this) or when the\ncaller asks for a negatively-sized slice of a buffer (such exceptions are\nunrecoverable and indicate a mistake in the code consuming this API).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."posix-api" or (errorHandler.buildDepError "posix-api"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
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
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            ];
          buildable = true;
          };
        };
      };
    }