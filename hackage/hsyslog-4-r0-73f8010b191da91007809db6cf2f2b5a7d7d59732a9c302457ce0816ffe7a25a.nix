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
      identifier = { name = "hsyslog"; version = "4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2016 by Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons, John Lato, Jonathan Childress";
      homepage = "http://github.com/peti/hsyslog";
      url = "";
      synopsis = "FFI interface to syslog(3) from POSIX.1-2001";
      description = "This library provides FFI bindings to syslog(3) from\n<http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/syslog.h.html POSIX.1-2008>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }