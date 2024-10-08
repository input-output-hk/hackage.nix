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
      specVersion = "1.8";
      identifier = { name = "zmcat"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/zmcat";
      url = "";
      synopsis = "Command-line tool for ZeroMQ.";
      description = "ZeroMQ is a handy way to communicate between applications:\n\n[Rationale:] Zmcat is an handy command-line tool to debug or communicate\nwith ZeroMQ applications from the shell.\nOne use of zmcat is to easily audit, monitor, add cron-jobs shell scripts\nwhich speak zmq.\n\n[Limitations:]\nA limitation is that Zmcat only supports printable text. Support for\nrandom binary streams will come later.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."zeromq3-haskell" or (errorHandler.buildDepError "zeromq3-haskell"))
        ];
        buildable = true;
      };
      exes = {
        "zmcat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."zmcat" or (errorHandler.buildDepError "zmcat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }