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
      identifier = { name = "hsyslog"; version = "1.6"; };
      license = "BSD-3-Clause";
      copyright = "Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://github.com/peti/hsyslog";
      url = "";
      synopsis = "FFI interface to syslog(3) from POSIX.1-2001";
      description = "This library provides FFI bindings to syslog(3) from POSIX.1-2001.\nSee <http://www.opengroup.org/onlinepubs/009695399/basedefs/syslog.h.html> for\nfurther details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }