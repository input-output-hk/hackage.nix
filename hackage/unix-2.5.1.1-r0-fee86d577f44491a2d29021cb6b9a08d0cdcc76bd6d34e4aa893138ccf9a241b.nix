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
      specVersion = "1.6";
      identifier = { name = "unix"; version = "2.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "POSIX functionality";
      description = "This package gives you access to the set of operating system\nservices standardised by POSIX 1003.1b (or the IEEE Portable\nOperating System Interface for Computing Environments -\nIEEE Std. 1003.1).\n\nThe package is not supported under Windows (except under Cygwin).";
      buildType = "Configure";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }