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
      identifier = { name = "logging-facade-syslog"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons";
      homepage = "https://github.com/peti/logging-facade-syslog#readme";
      url = "";
      synopsis = "A logging back-end to syslog(3) for the logging-facade library";
      description = "A simple \"System.Logging.Facade\" back-end for @syslog(3)@ as specified in <http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."logging-facade" or (errorHandler.buildDepError "logging-facade"))
          (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
          ];
        buildable = true;
        };
      };
    }