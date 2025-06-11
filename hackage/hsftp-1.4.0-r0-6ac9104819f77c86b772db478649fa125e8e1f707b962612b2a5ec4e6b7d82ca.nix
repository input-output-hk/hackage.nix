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
      specVersion = "2.2";
      identifier = { name = "hsftp"; version = "1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024-present IOcrafts";
      maintainer = "Maurizio Dusi";
      author = "Maurizio Dusi";
      homepage = "https://iocrafts.github.io/hsftp/";
      url = "";
      synopsis = "A SFTP client tool for secure file transfer operations";
      description = "Hsftp is a command-line tool for secure file transfer operations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        pkgconfig = [
          (pkgconfPkgs."libssh2" or (errorHandler.pkgConfDepError "libssh2"))
        ];
        buildable = true;
      };
      exes = {
        "hsftp" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hsftp" or (errorHandler.buildDepError "hsftp"))
            (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          pkgconfig = [
            (pkgconfPkgs."libssh2" or (errorHandler.pkgConfDepError "libssh2"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hsftp-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hsftp" or (errorHandler.buildDepError "hsftp"))
            (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          pkgconfig = [
            (pkgconfPkgs."libssh2" or (errorHandler.pkgConfDepError "libssh2"))
          ];
          buildable = true;
        };
      };
    };
  }