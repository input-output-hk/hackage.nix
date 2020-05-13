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
    flags = { install-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsyslog"; version = "5.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2004-2017 by Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons, John Lato, Jonathan Childress";
      homepage = "http://github.com/peti/hsyslog";
      url = "";
      synopsis = "FFI interface to syslog(3) from POSIX.1-2001";
      description = "A Haskell interface to @syslog(3)@ as specified in\n<http://pubs.opengroup.org/onlinepubs/9699919799/functions/syslog.html POSIX.1-2008>.\nThe entire public API lives in \"System.Posix.Syslog\". There is a set of exposed\nmodules available underneath that one, which contain various implementation details\nthat may be useful to other developers who want to implement syslog-related\nfunctionality. /Users/ of @syslog@, however, do not need them.\n\nAn example program that demonstrates how to use this library is available in the\n<https://github.com/peti/hsyslog/blob/master/example/Main.hs examples> directory of\nthis package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "hsyslog-example" = {
          depends = (pkgs.lib).optionals (flags.install-examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hsyslog" or (errorHandler.buildDepError "hsyslog"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = if flags.install-examples then true else false;
          };
        };
      };
    }